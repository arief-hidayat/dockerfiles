To run, do the following:
	
	docker pull atcol/grails-tomcat7-jdk8

Now run connect to the container in the container:

	docker run -it --rm -p 5901:5901 atcol/grails-tomcat7-jdk8

and start VNC:

	USER=dev vncserver :1 -geometry 1280x800 -depth 24

entering your desired password when prompted.

Now connect using your favourite VNC viewer:

	xtightvncviewer localhost::5901

and you should see this:

![Docker JEE development desktop environment](screenshot.png)
![Docker JEE development desktop environment](screenshot-intellij-vnc-windows.png)
