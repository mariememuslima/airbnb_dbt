# DBT Final Project

This project 

Participants :
- [Marième Pouye](https://github.com/mariememuslima)
- [Fatou Bintou Wade](https://github.com/mariememuslima)
- [Khady Gueye](https://github.com/mariememuslima)

## Setting the DBT environment

To use DBT, you should have Python installed in your device

Install the virtual environment dependencies
``` 
pip install virtualenv
```

Create a virtual environment
``` 
python -m venv env
```
Activate the virtual environment in windows 
``` 
source .\env\Scripts\Activate.ps1
```
Activate the virtual environment on Ubuntu
``` 
source env\bin\activate
```
Upgrade pip
``` 
python -m pip install --upgrade pip
```
Install dbt-core and the dependencies for the databases used (dbt-bigquery, dbt-posgres, dbt-snowflake)
``` 
pip install dbt-core dbt-bigquery
```
Check dbt version
``` 
dbt --version
```
Initiate the dbt, this command will create the dbt file/repositories structuration, follow the instruction by giving the dbt's name project, the database informations needed etc Make sure to add the correct information 
``` 
dbt init
```
## Configuration

Initiate the dbt, this command will create the dbt file/repositories structuration, follow the instruction by giving the dbt's name project, the database informations needed etc Make sure to add the correct information 

``` 
dbt init
```
After initiating the dbt project, you should put the correct informations related to your bigquery database

## Understand the project

## Understand the KPI

## Airflow Configuration

Initiate the dbt, this command will create the dbt file/repositories structuration, follow the instruction by giving the dbt's name project, the database informations needed etc Make sure to add the correct information 

1. Setting the environment

Create the airflow folder
``` 
mkdir Airflow
```
po
``` 
cd .\Airflow\
```
Create python environment
``` 
python -m  venv env
```
Enable the python environment
``` 
source .\env\Scripts\Activate
```
Upgrade pip
``` 
python -m pip install --upgrade pip
```
Install Airflow with pip
``` 
pip install "apache-airflow[celery]==2.7.0" --constraint "https://raw.githubusercontent.com/apache/airflow/constraints-2.7.0/constraints-3.8.txt"
```

Initiate Apache Airflow
``` 
airflow db init
```
You'll need to set the airflow.cfg file by filling in the core section the dags'directory path

Create an admin user 
``` 
airflow users create --username admin --firstname <YOUR_FIRST_NAME> --lastname <YOUR_LAST_NAME> --role Admin --email admin@example.com
```


2. Start Airflow 
Start Airflow webser
``` 
airflow webserver --port 8080
```
Start Airflow scheduler
``` 
airflow scheduler
```
To run it in detach mode you can do
in windows
``` 
airflow webserver --port 8080 -D
airflow scheduler -D
```
in ubuntu
``` 
airflow webserver --port 8080 &
airflow sche
duler &
`````````
## Creating an Exposure with DBT


## Creating an Exposure with DBT
You can add the file dags/airbnb_dag.py to your airflow/dags/ repository to run the dbt project everyday at 8 am

## Vizualisation With Power BI


<img src="img/numpy-arrays-example-1.png" alt="Airbnb models visualized with Power BI Desktop">