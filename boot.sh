#!/bin/bash

flask db upgrade
export FLASK_DEBUG=True
exec gunicorn --reload -b :5000 --access-logfile - --error-logfile - 'kailio:create_app()'