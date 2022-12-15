#!/bin/sh
if [ ! -f UUID ]; then
  UUID="4942771f-909e-4f66-8f1b-77a5d6a884ad"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

