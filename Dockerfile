# Test Busybox image

FROM progrium/busybox
MAINTAINER Jean Blanchard <jean@blanchard.io>

# Configuration
ADD secret.txt /secret.txt

# Launch Tomcat on startup
CMD cat /secret.txt
