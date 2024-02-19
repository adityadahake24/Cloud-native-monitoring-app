#define the base image
FROM python:3.9-buster
#Define the working directory
WORKDIR /app
#copy the requirement file from the source to the /app working directory
COPY requirements.txt .
#read and install all the required modules for the application in the docker environment 
RUN pip3 install --no-cache-dir -r requirements.txt
#Copy the rest of the code files from source to working directory
COPY . .
#Set the environment variable
ENV FLASK_RUN_HOST=0.0.0.0
#Exposed the port where the application is going to be running
EXPOSE 5000 
#start the application when the container is run.
CMD ["flask", "run"]