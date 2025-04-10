# Basic NodeJs Web Server

# About Repository:
This is a basic node-js web server for quick project examples.

# Software(s) required:
* Latest stable version of Node Package Manager

# Project Setup:

* Step 1:

Switch to the projects root directory and run `npm install` to install the required packages.

* Step 2:

Set the following environemnt variables:

`NAME`

`ENVIRONMENT`

* Step 3:

Run `npm  run dev` to start-up the web server and access the website on `http://localhost:{PORT}/`.

## Dependencies:
* cors 
* dotenv
* express
* helmet
* morgan

## Dev-dependencies:
* husky
* jest
* nodemon
* prettier
* pretty-quick
* supertest

# Creating an image and running a container

Build image:

```
docker build -t <image-name>:<tag> .
```

Start Container:

```
docker run --detach -p 8080:8080 --name <container-name> <image>:<tag>
```
