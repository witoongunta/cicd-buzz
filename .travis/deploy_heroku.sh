#!/bin/sh
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku plugins:install heroku-container-registry
docker login -u _ --password=406e5a73-eeaa-4dd5-bb60-683d305d4ea5 registry.heroku.com
heroku container:push web --app https://peaceful-ocean-64469.herokuapp.com/
