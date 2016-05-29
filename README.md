Docker Jenkins Slave
====================

###


```
docker run --rm -v /data/jenkins-slave:/data/jenkins-slave -v /var/run/docker.sock:/var/run/docker.sock --rm fgribreau/jenkins-slave:latest java -jar /app/slave.jar -jnlpUrl "http://YOUR_OWN_JENKINS.com/computer/SLAVE_NAME/slave-agent.jnlp" -secret "JENKINS_SECRET"
```

### Simply want to run Jenkins slave from a docker container?

Check out [How to start a Jenkins slave inside Docker](http://blog.fgribreau.com/2016/05/how-to-start-jenkins-slave-in-docker.html)
