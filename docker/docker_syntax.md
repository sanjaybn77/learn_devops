# Base Image:
--> this is  typically an official image from the docker hub or another registry
1) syntax-> FROM < image_name >
2) eg: FROM ubuntu:20.04

# Maintainer information:
--> you can provide information about the image maintainer, but it's an optional but it's a good practice

1) syntax->  LABEL maintainer="your_name <your.example@gmail.com>"
2) eg : LABEL maintainer="sanjay <sanjay@gmail.com>"

# Environment variable:
--> you can set environment variable that will be available in the container. this allows you to configure the container behaviours 
  1) syntax->  ENV MY_VAR=My_value
  2) eg: ENV APP_PORT 8080
     -->      or
  4) eg: ENV APP_PORT=8080 

# working dir:
--> you the can set the working directory for commands that fallow. this can help organize the file system within the directory

1) syntax-> WORKDIR /app
2) eg: WORKDIR /sanjay

# Copy files:
--> you can copy fiiles form the host system into the image
1) syntax -> COPY file_name /path/to/paste

# 6) RUN Command:
--> you use the RUN command to execute inside the container during the image build process
1) syntax: RUN < commads >
2) eg: RUN apt-get update && apt-get install python -y

# 7) set USER 
--> you can set the user 
1) syntax: USER myuser

# CLEAN 
--> this command will clean up the temparary and cache files to minimize the unnecasary things
  --> syntax: RUN apt-get CLEAN
# COMMENT
--> this will comment the whole line 
--> eg: # this line is the comment


# some tips in docker file
1) space
   --> don't give unnecessary space between operators and operands
   1) eg: ENV My_port = 8080 (wrong format)
   2)  eg: ENV my_port=8080( right one) 
