To run this container 

docker-compose up

To run this container in background 

docker-compose up -d


If there is any changes in the code then 

docker-compose up --build


To stop the container :
docker-compose down

To see the process runned by docker-compose. This command can be executed on only folder where docker-compose.yml is there. 
docker-compose ps


Overall docker-compose command is used to ease the process. Because using cli we have to do lot of the commands. But using docker-compose we can specify 
how many containers are being used and tell docker-compose to handle the communication between them automatically 


so this project is like 

user -> node-app container -> redis container

communication between node-app container and redis container is easily setup by docker-compose. 



