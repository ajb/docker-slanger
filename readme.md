# docker-slanger

Start the redis container:

`docker run --name redis -d redis`

Build the slanger image:

`docker build -t slanger .`


Run the image linking it to redis:

docker run -d -p 8080:8080 -p 4567:4567 -it --link redis:redis slanger
