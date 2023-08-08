Steps to reproduce:

```sh
# build uberjar
lein do clean, uberjar

# build native-image (snakeyaml error)
native-image \
  -H:+AllowIncompleteClasspath \
  --verbose \
  --no-fallback \
  --enable-url-protocols=http,https \
  --report-unsupported-elements-at-runtime \
  --no-server \
  --features=clj_easy.graal_build_time.InitClojureClasses \
  -jar target/graal-issue-0.0.1-standalone.jar \
  target/graal-issue
```
