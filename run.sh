#!/bin/sh

set -e

# Log Level
ZMQ=${ZMQ:-"23.0.0"}
SALT=${SALT:-"3002.8"}
SALT_ROLE=${SALT_ROLE:-"minion"}
LOG_LEVEL=${LOG_LEVEL:-"warning"}

pip install jinja2==3.0.3 salt==$SALT pyzmq==$ZMQ

/usr/local/bin/salt-$SALT_ROLE --log-level=$LOG_LEVEL
