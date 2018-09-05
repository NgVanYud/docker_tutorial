# Docker Tutorial

This is the application for the [*Docker Tutorial*](https://github.com/HoanKi/docker_tutorial) by [HoanKi](https://github.com/HoanKi).

+ About Dockerfile:
  +  [Demo](https://github.com/HoanKi/docker_tutorial/tree/dockerfile)

+ About docker-compose:

   + [Rails app with mysql](https://github.com/HoanKi/docker_tutorial/tree/rails_mysql).


# About docker-compose for Rails app with mysql

1. Install docker, docker-compose

2. Run command:

* Build image
  ```
  sudo docker-compose build
  ```
* Run container
  ```
  sudo docker-compose up
  ```
*

* Open new Terminal, create database
  ```
  sudo docker-compose run web rake db:create
  sudo docker-compose run web rake db:migrate
  sudo docker-compose run web rake db:seed
  ```
