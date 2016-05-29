Docker Jenkins Slave
====================

> Run a Jenkins slave in docker AND access to docker cli from jobs

- Go to Jenkins > manage > node management
- Click *Create a node*
- Check *Permanent Agent*
- Set *working directory* to something like `/data/jenkins-slave` (if you specify something else, don't forget to also change the command below)
- Save
- Download slave-agent.jnlp, open it to retrieve your secret
- Change the command below with the working directory you specified, your slave-agent URL and jenkins secret
- Run it
- Enjoy :+1:

```
docker run --rm -v /data/jenkins-slave:/data/jenkins-slave -v /var/run/docker.sock:/var/run/docker.sock --rm fgribreau/jenkins-slave:latest java -jar /app/slave.jar -jnlpUrl "http://YOUR_OWN_JENKINS.com/computer/SLAVE_NAME/slave-agent.jnlp" -secret "JENKINS_SECRET"
```

Wonder why this is awesome? Check out [the related blog post](http://blog.fgribreau.com/2016/05/how-to-start-jenkins-slave-inside.html).

### Simply want to run Jenkins slave from a docker container?

Check out [How to start a Jenkins slave inside Docker](http://blog.fgribreau.com/2016/05/how-to-start-jenkins-slave-in-docker.html) on my blog, (spoiler: it only requires docker official java image).
