echo "Adding users via auth-script.sh"
mongo --eval "var dbUser='$MONGO_USER', dbPass='$MONGO_PASS', dbName='$MONGO_INITDB_DATABASE'" /var/lib/mongodb/scripts/auth-script.js

echo "Adding validators via validators-script.sh"
mongo --eval "var dbName='$MONGO_INITDB_DATABASE'" /var/lib/mongodb/scripts/validators-script.js