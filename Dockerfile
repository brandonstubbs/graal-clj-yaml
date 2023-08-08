FROM ghcr.io/graalvm/native-image:22.3.3

# install leiningen
RUN curl -o /usr/local/bin/lein https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
RUN chmod a+x /usr/local/bin/lein

# create working directory
RUN mkdir native
WORKDIR /native

# copy project files
COPY . /native

# build uberjar
RUN lein do clean, uberjar

# create native image
RUN native-image \
  -H:+AllowIncompleteClasspath \
  --verbose \
  --no-fallback \
  --enable-url-protocols=http,https \
  --report-unsupported-elements-at-runtime \
  --no-server \
  --features=clj_easy.graal_build_time.InitClojureClasses \
  -jar target/graal-issue-0.0.1-standalone.jar \
  test

# run native image
RUN chmod a+x test
RUN ./test
