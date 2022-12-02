# springMvc project

## About
This is a my pet project, web student management system using such technologies as spring mvc, hibernate, aop. You can add students to database, update exsisting student and delete. 

## Demo


## Creating database to run project
You have to create database and table to run project

* Create database in pgAdmin4
* Import studentstable.sql file which is in the root of the project

## Change applicationContext file
Нou have to change the code snippet below to connect to your database

`<bean id="dataSource" class="com.mchange.v2.c3p0.ComboPooledDataSource"
          destroy-method="close">
        <property name="driverClass" value="org.postgresql.Driver" />
        <property name="jdbcUrl" value="jdbc:postgresql://localhost:5432/Student?useSSL=false" /> //Your database url 
        <property name="user" value="postgres" /> //Your database username
        <property name="password" value="webuser" /> //Your database password
</bean>`
