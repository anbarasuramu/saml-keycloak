# saml-app
SAMLv2 demo app using KEYCLOAK.

## Source
Source code can be found at: https://github.com/anbarasuramu/saml-keycloak.git

## Usage

### Install

Pull `anbarasu\saml-app` from the Docker repository:

    docker pull anbarasu\saml-app


Or build `anbarasu\saml-app` from source:

    git clone https://github.com/anbarasuramu/saml-keycloak.git
    cd saml-app/docker
    docker build -t anbarasu/saml-app .

### Run

#### Customize your keycloak-saml.xml
* Get adapter configuration file from https://github.com/anbarasuramu/saml-keycloak/blob/master/src/main/webapp/WEB-INF/keycloak-saml.xml
* Customize to your environment

#### Run the container


#### Or Run the container mounting your custom keycloak-saml.xml

Run the image, binding associated ports, and mounting your custom keycloak-saml.xml:

    docker run -d \
      -p 8080:8080 \
      -v $(pwd)/keycloak-saml.xml:/usr/local/tomcat/webapps/saml-app/WEB-INF/keycloak-saml.xml \
      anbarasu/saml-app
