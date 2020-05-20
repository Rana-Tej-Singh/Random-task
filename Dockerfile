# Import image
FROM centos
# Define environment variable
ENV x=green
# Installations of web packages
RUN yum install httpd -y
# Working directory of container
WORKDIR /
# Copying data
COPY . .
# Change file permissions
RUN chmod +x start.sh
# Port exposing to get connect
EXPOSE 80
# Command, executable while container creation time
ENTRYPOINT ["/bin/bash", "/start.sh"]
