To run, do the following:
	
	$ docker pull atcol/grails-tomcat7-jdk8

Now run xdm in the container:

	$ docker run -it --rm -p 5901:5901 atcol/grails-tomcat7-jdk8

then execute:

	$ USER=dev vncserver :1 -geometry 1280x800 -depth 24

and enter your desired password when prompted.

Now connect using your favourite VNC viewer:

	$ xtightvncviewer localhost::5901

and you should see this:

![Docker JEE development desktop environment](screenshot.png)
