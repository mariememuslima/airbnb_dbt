from datetime import datetime
import logging
from airflow import DAG
from airflow.operators.bash import BashOperator
from airflow.operators.email import EmailOperator
from airflow.operators.python import PythonOperator

# The default arguments are for the DAG
default_args = {
    'owner'     : 'marieme',
    'start_date': datetime.now(),
    'retries'   : 1
}

    
# Getting the context status from the bash command 
def process_data(**context):
    data= context['data'].xcom_pull(task_ids='dbt_run_task')
    context['task_instance'].xcom_push(key='recover_data', value=data)


# Defining our DAG by giving him a name, the default_args settings and the schedule intervale
dag=DAG('dbt_seed', 
        description ="These dags is for loading the files in our dbt's seed files", 
        default_args=default_args, 
        schedule    ='@once')


# Setting some util variables
my_directory = "/home/marieme/Documents/Atos/Atos.7.DBT/2.PracticingDBT/airbnb_dbt/airbnbdbt"



##--**-- ## THE TASKs FOR THE DBT RUNNING COMMAND SETTINGS ## --**--##
dbt_run = BashOperator(
    task_id='airbnb',
    bash_command=f"cd {my_directory} && dbt seed",
    dag=dag
    )



dbt_run 