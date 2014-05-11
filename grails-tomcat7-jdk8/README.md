To run, do the following:
	
	docker pull atcol/grails-tomcat7-jdk8

Now run connect to the container in the container:

	docker run -it --rm -p 5901:5901 atcol/grails-tomcat7-jdk8

which will automatically start VNC as follows:

	USER=dev vncserver :1 -geometry 1600x900 -depth 24

thus ask you for a password.

Now connect using your favourite VNC viewer e.g.:

	xtightvncviewer localhost::5901

and you should see this:

![Docker JEE development desktop environment](screenshot.png)
