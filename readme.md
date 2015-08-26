# docker-slanger

Docker image for [slanger](https://github.com/stevegraham/slanger) that can be configured with environment variables.

## To run:

Start the redis container:

`docker run --name redis -d redis`

Build the slanger image:

`docker build -t slanger .`

Run the image linking it to redis:

`docker run -p 8080:8080 -p 4567:4567 -it --link redis:redis --env SLANGER_KEY=foo --env SLANGER_SECRET=bar slanger`

## Configuration:

| Variable | Required |
| --- | --- |
| SLANGER_KEY | ✓ |
| SLANGER_SECRET | ✓ |
| SLANGER_PRIVATE_KEY_FILE | |
| SLANGER_CERT_FILE | |
| SLANGER_API_HOST | |
| SLANGER_WEBSOCKET_HOST | |
| SLANGER_WEBHOOK_URL | |
