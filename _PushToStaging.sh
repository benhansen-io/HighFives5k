jekyll build
ssh server <<STOP
rm -r /srv/http/5k/staging
mkdir /srv/http/5k/staging
STOP
scp -r _site/* server:/srv/http/5k/staging
