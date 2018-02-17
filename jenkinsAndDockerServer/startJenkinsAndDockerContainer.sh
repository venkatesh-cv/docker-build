docker run -i -p 8080:8080 -p 50000:50000  -v /var/jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock --name jenkins cvenkatesh/jenkins-docker-server 
