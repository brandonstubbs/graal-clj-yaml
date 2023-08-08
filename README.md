Steps to reproduce:

```sh
# build uberjar (Run this first)
./build.sh

# (Run after building uberjar)
# Testing with different native-image versions:
# works
docker build --progress=plain -t native-test -f Dockerfile-21.3.3 .
# fails
docker build --progress=plain -t native-test -f Dockerfile-22.2.0 .
docker build --progress=plain -t native-test -f Dockerfile-22.3.1 .
docker build --progress=plain -t native-test -f Dockerfile-22.3.2 .
docker build --progress=plain -t native-test -f Dockerfile-22.3.3 .
```

Test native-image locally
```sh
./nativeimage.sh target/graal-issue-0.0.1-standalone.jar target/graal-issue
```
