# Deno docker image

*A simple image ready to run Deno applications.*

[denoland/deno](https://github.com/denoland/deno)

## Usage

### Local usage

1) Pull the image:  
`docker pull lucasfds/deno`
2) Run the image and check the Deno version:  
`docker run -it lucasfds/deno deno --version`

**Result:**
```
deno 1.0.2
v8 8.4.300
typescript 3.9.2
```

### Install and execute app from URL

1) Pull the image:  
`docker pull lucasf ds/deno`
2) Start the image:  
`docker run -it lucasfds/deno /bin/bash`
3) Install the app:  
`deno install --allow-net https://deno.land/std/examples/echo_server.ts`
4) Start the app:  
`echo_server`

**Result:**

```
Listening on 0.0.0.0:8080
```

### Dockerfile example

```Dockerfile
FROM lucasfds/deno

RUN deno install -f --allow-net https://deno.land/std/examples/echo_server.ts

CMD ["echo_server"]
```

1) Build the image:  
`docker build . -t deno-example`
2) Start the app:  
`docker run -it -p 8080:8080 deno-example`

**Result:** 

```
Listening on 0.0.0.0:8080
```