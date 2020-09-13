FROM google/dart-runtime

WORKDIR /app

ADD pubspec.* /app/
RUN pub get
ADD . /app
RUN pub get --offline

EXPOSE 8000
ENTRYPOINT ["/usr/bin/dart", "bin/main.dart"]