# easyleave
Sample app for Jenkins, Docker, Heroku and Azure App Services.

1. Get an Ubuntu instance and install default-jdk,maven,awscli and docker-machin using apt get.
2. download jenkins.war file and install jenkins as a service by following the given method.
                
                a. Download jenkins.war file to any convenient destination, eg. /home/jenkins_user
                b.Create service file /etc/systemd/system/jenkins.service and paste following there:
                
                                [Unit]
                                Description=Jenkins Daemon

                                [Service]
                                ExecStart=/usr/bin/java -jar /home/jenkins_user/jenkins.war
                                User=jenkins_user

                                [Install]
                                WantedBy=multi-user.target
                                
                c.Reload service manager: systemctl daemon-reload
                d.That's it! Now manage the service: [start the service as jenkins user, not as su]
                                systemctl start jenkins.service      # starts the service manually
                                systemctl stop jenkins.service
                                systemctl restart jenkins.service
                                systemctl enable jenkins.service     # enable the service to start with system startup;
                                                                                                                                                                                # please note that it does not start the service instantly
                                systemctl disable jenkins.service    # disable automatic start
                e.If anything goes wrong, use journalctl command (and scroll to bottom) to see any error messages.
                f.You may want to redirect or suppress Jenkins output, otherwise you can kill Journal log. Change jenkins.helper to eg. java -jar /home/jenkins_user/jenkins.war > /dev/null &


3. Create cluster[staging and production] and define service with tasks(pulling the app image from docker hub)
	a. this include adding ec2 instance to cluster..refer http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-install.html
3. Set the pipeline job in jenkins from got repository..https://github.com/sumitsaiwal/easyleave/

