# flask-web-app-in-docker
A basic flask web app running in a docker container hosted on an Ubuntu Server.

app.py is a stand-alone flask web app which is created just for demonstration purpose.
It prints "Hello Deepankar!" on the front end.

Docker is a tool designed to make it easier to create, deploy, and run applications by using containers. Containers allow a developer to package up an application with all of the parts it needs, such as libraries and other dependencies, and ship it all out as one package.

I have created a docker image and used that image to create a container where this flask-web-app runs. 
The benefit of using docker is that this app can be deployed on any system without worrying about the system configurations and dependencies, libraries, etc. 

A Dockerfile is a text document that contains all the commands a user could call on the command line to assemble an image. Using docker build users can create an automated build that executes several command-line instructions in succession.

Requirements.txt consists of the required libraries which need to be installed for running this app.



#### Command to build an image:

````
docker build . -t basic_flask
````
Here, 'basic_flask' is the name of the image which will contain app.py

![alt text](https://github.com/deepankarkotnala/flask-web-app-in-docker/blob/master/Images/docker_build.JPG)


#### We can see the created images using the following command:

````
docker images
````

![alt text](https://github.com/deepankarkotnala/flask-web-app-in-docker/blob/master/Images/docker_images.JPG)


#### Command to run the image and create a container running this app:

````
docker run -p 8080:5000 basic_flask
````

![alt text](https://github.com/deepankarkotnala/flask-web-app-in-docker/blob/master/Images/docker_run_app.JPG)


#### If we want to mount a host volume to the container, then we can make use of '-v'

````
docker run -v ~/practice_docker/docker:/app -p 8080:5000 basic_flask
````
Using this, the volume having app.py on our host machine will be mounted on the container and we can just change the app.py on our host machine and refresh the webpage to see the changes. We will not be required to create a separate image and run it for making any changes.

![alt text](https://github.com/deepankarkotnala/flask-web-app-in-docker/blob/master/Images/mount_volume.JPG)


#### Having a look at the front-end 
To access the webpage that we will get from the flask app, just go to localhost:8080 because we have mapped the internal port 5000 of the flask-app to the external port 8080 of our host machine.

````
localhost:8080
````

![alt text](https://github.com/deepankarkotnala/flask-web-app-in-docker/blob/master/Images/app_running_in_docker_container.JPG)



#### To see the running containers, use below command

````
docker ps
````

#### To stop a container, copy the container_id, and write below command

````
docker stop <container_id>
````

#### To delete an image, use the below command

````
docker image rm -f <image_name/image_id>
````
 
