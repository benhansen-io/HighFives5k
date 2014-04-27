ssh server <<STOP
if [ ! -d /srv/http/5k/staging ]; then
    echo "Staging does not exist. Quitting.";
    exit;
fi
rm -r /srv/http/5k/prod-old
mv /srv/http/5k/prod /srv/http/5k/prod-old
mv /srv/http/5k/staging /srv/http/5k/prod
STOP
