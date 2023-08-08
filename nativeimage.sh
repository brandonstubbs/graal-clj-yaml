#!/bin/bash -xe
# args: $1 jarfile, $2 output executable file

native-image \
  -H:+AllowIncompleteClasspath \
  --verbose \
  --no-fallback \
  --enable-url-protocols=http,https \
  --report-unsupported-elements-at-runtime \
  --no-server \
  --features=clj_easy.graal_build_time.InitClojureClasses \
  -jar $1 \
  $2

chmod +x $2
