# image-cache


Write-up can be found on [medium](https://medium.com/@jgleeee/building-an-image-cache-using-nginx-30df79520ad7)

### Build

```
$ docker build -t image-cache:v1 .
```

### Deploy

```
$ docker service create --mode global --name nginx --with-registry-auth \
                        --publish published=80,target=80,mode=host \
                        image-cache:v1
```
