FROM jenkins/jenkins:latest

COPY my_marvin.yml /var/jenkins_home/my_marvin.yml
RUN docker run -p 8080:8080 -p 50000:50000 --restart=on-failure jenkins/jenkins:latest

CMD ["run"]