# Container image that runs your code
FROM openjdk:8-jdk-alpine

# Download CheckStyle JAR File
RUN wget -O -q https://github.com/checkstyle/checkstyle/releases/download/checkstyle-8.35/checkstyle-8.35-all.jar > /checkstyle.jar

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Make your entrypoint.sh file executable
RUN chmod +x entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
