# Arangodb Alpine

The goal here is building an Alpine linux package for Arangodb.

### Build the image


```sh
docker build -t mikewilliamson/arango-alpine .
```

### Jump into the build environment:

```sh
docker run -it -v `pwd`:/home/mike mikewilliamson/arango-alpine
```
