#CREATE PROJECT IN OPENSHIFT
oc new-project teiid-dataservice

# DEPLOY POSTGRES DATABASE
oc new-app \
  -e POSTGRESQL_USER=user \
  -e POSTGRESQL_PASSWORD=mypassword \
  -e POSTGRESQL_DATABASE=sampledb \
  postgresql:9.5

# CREATE SECRET TO CONNECT TO DATABASE (ADJUST TO YOUR VALUES)
oc create -f secret.yaml


