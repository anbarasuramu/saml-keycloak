FROM identicum/centos-java-maven:latest AS build-env

RUN git clone https://github.com/anbarasuramu/saml-keycloak.git .
RUN /usr/bin/mvn package

# ############################################################################
# Build runtime image
FROM identicum/centos-tomcat:latest
MAINTAINER Anbarasu Ramu <anbarasu.ramu@gmail.com>


RUN yum -y install unzip

COPY --from=build-env /source/target/saml-app-0.0.1-SNAPSHOT.war /tmp/
RUN unzip -qq /tmp/saml-app-0.0.1-SNAPSHOT.war -d /usr/local/tomcat/webapps/myapp && \
    rm -f /tmp/saml-app-0.0.1-SNAPSHOT.war && \
    echo "<% response.sendRedirect(\"/myapp/\"); %>" > webapps/ROOT/index.jsp

RUN ln -sf /dev/stdout /tmp/demo-app-saml.log

