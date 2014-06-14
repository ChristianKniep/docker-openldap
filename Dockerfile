###### OpenLDAP Images
FROM qnib/supervisor
MAINTAINER "Christian Kniep <christian@qnib.org>"

### OpenLDAP
RUN yum install -y openldap-servers migrationtools
# Remove the existing slapd.d directory (else Fedora will not read our configuration).
#RUN rm -Rf /etc/openldap/slapd.d/
ADD etc/openldap/slapd.conf /etc/openldap/slapd.conf


