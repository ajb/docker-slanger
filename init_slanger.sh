#!/bin/sh

redis_url="redis://$REDIS_PORT_6379_TCP_ADDR:$REDIS_PORT_6379_TCP_PORT/0"
cmd="slanger --app_key $SLANGER_KEY --secret $SLANGER_SECRET -r $redis_url"

if [ -n "$SLANGER_PRIVATE_KEY_FILE" ]; then
  cmd="$cmd --private_key_file $SLANGER_PRIVATE_KEY_FILE";
fi

if [ -n "$SLANGER_CERT_FILE" ]; then
  cmd="$cmd --cert_file $SLANGER_CERT_FILE";
fi

if [ -n "$SLANGER_API_HOST" ]; then
  cmd="$cmd --api_host $SLANGER_API_HOST";
fi

if [ -n "$SLANGER_WEBSOCKET_HOST" ]; then
  cmd="$cmd --websocket_host $SLANGER_WEBSOCKET_HOST";
fi

if [ -n "$SLANGER_WEBHOOK_URL" ]; then
  cmd="$cmd --webhook_url $SLANGER_WEBHOOK_URL";
fi

eval $cmd
