source /data/secrets

if [ -z "$AMQP_HOST" -o -z "$AMQP_USER" -o -z "$AMQP_PASS" ]; then
  echo Environment Variables is mising
  exit 1
fi

/app/dispatch