##
# NAME             : fgribreau/jenkins-slave
# TO_BUILD         : docker build --rm -t fgribreau/jenkins-slave:latest .
# TO_PUSH          : docker push fgribreau/jenkins-slave:latest
# TO_RUN           : docker run --rm -v /data/jenkins-slave:/data/jenkins-slave -v /var/run/docker.sock:/var/run/docker.sock --rm fgribreau/jenkins-slave:latest java -jar /app/agent.jar -jnlpUrl "http://YOUR_OWN_JENKINS.com/computer/SLAVE_NAME/slave-agent.jnlp" -secret "JENKINS_SECRET"
##
FROM java:8
MAINTAINER François-Guillaume Ribreau <docker@fgribreau.com>

WORKDIR /app

# install docker
RUN apt-get update -y && \
    apt-get install -y apt-transport-https ca-certificates && \
    apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D && \
    echo "deb https://apt.dockerproject.org/repo debian-jessie main" >> /etc/apt/sources.list.d/docker.list && \
    apt-get update -y && \
    apt-get install docker-engine -y

# download slave.jar
RUN wget http://jenkins.redsmin.com/jnlpJars/agent.jar
