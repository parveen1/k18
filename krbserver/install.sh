#! /bin/bash
# @parveen group hisix2
# instal.lacio slapd edt.org
# -------------------------------------
cp  /opt/docker/krb5.conf /etc/krb5.conf
cp /opt/docker/kdc.conf /var/kerberos/krb5kdc/kdc.conf 
cp /opt/docker/kadm5.acl /var/kerberos/krb5kdc/kadm5.acl
echo "172.17.0.2 kserver kserver.edt.org" >> /etc/hosts
/usr/sbin/kdb5_util create -s -P masterkey


kadmin.local -q "addprinc -pw kmarta marta"
kadmin.local -q "addprinc -pw kpere pere"
kadmin.local -q "addprinc -pw kanna anna"
kadmin.local -q "addprinc -pw ksuperuser superuser"
kadmin.local -q "addprinc -pw kjordi jordi"
kadmin.local -q "addprinc -pw kpere pere/admin"
#kadmin.local -q "list_principals"

