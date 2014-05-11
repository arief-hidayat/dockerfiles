To run, do the following:
	
	docker pull atcol/grails-tomcat7-jdk8

Now run connect to the container in the container:

	docker run -v $HOME/docker/:/home/dev/files:rw -it --rm -p 5901:5901 atcol/grails-tomcat7-jdk8

**Note**: change $HOME/docker to a host OS directory of your choosing, for RW storage, but ensure it's read-write permissions for all

Now start VNC using the `/home/dev/startvnc.sh` script:

	sh startvnc.sh

and enter a desired password

Now connect using your favourite VNC viewer e.g.:

	xtightvncviewer localhost::5901

and you should see this:

![Docker JEE development desktop environment](screenshot.png)
![Docker JEE development desktop environment](screenshot-intellij-vnc-windows.png)
