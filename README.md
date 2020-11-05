
# Build

```bash
docker build --tag=firebase-cli . 
```

# Push to Docker Hub

### Login
```bash
docker login
```

### Tag built image

```bash
docker images
```

Get image ID for `firebase-cli`.

```bash
docker tag <image-id> adamharrison/firebase-cli:latest
```

### Push to Docker Hub
```bash
docker push adamharrison/firebase-cli
```


