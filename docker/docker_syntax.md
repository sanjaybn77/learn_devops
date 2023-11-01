# Base Image:
--> this is  typically an official image from the docker hub or another registry
1) FROM < image_name >
2) eg: FROM ubuntu:20.04

# Maintainer information:
--> you can provide information about the image maintainer, but it's an optional but it's a good practice

1) LABEL maintainer="your_name <your.example@gmail.com>"
2) eg : LABEL maintainer="sanjay <sanjay@gmail.com>"

# Environment variable:
--> you can set environment variable that will be available in the container. this allows you to configure the container behaviours 
  1) ENV MY_VAR=My_value
  2) eg: ENV APP_PORT 8080