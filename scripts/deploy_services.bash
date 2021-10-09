#! /bin/bash
#
# deploy_services.bash
#

FLASK_ENV=${FLASK_ENV:-development}
gunicorn -w 4 "services:wsgi:create_app(config='${FLASK_ENV}')"
