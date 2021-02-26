# In alpine image npm is not installed . So we get it from the image node:alpine where npm is installed
FROM node:alpine 

#This makes folder app inside the container. After which all the instructions will be executed in this folder
WORKDIR '/app'

# First of all it copies the package.json from the local machine to container. 
#We copied package.json specifically because we do not change package.json often and each time npm will install same dependecies when starting the container again.
# So doing this will look for the changes and if there is no change it will get it from cache. 
# Sole idea is it is not changed often. Other codes are changed mostly like .js code
COPY package.json .

#This will install the dependecies
RUN npm install

# It will see if there is any change in js files or other files or not and then apply the changes
COPY . . 

# This will be executed when the container is started . It is the command line in the container which get executed after container is started. 
CMD ["npm", "start"]



