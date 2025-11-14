#!/usr/bin/env sh
DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
WRAPPER_JAR="$DIR/.mvn/wrapper/maven-wrapper.jar"
WRAPPER_LAUNCHER="org.apache.maven.wrapper.MavenWrapperMain"

if [ ! -f "$WRAPPER_JAR" ]; then
  echo "Maven Wrapper JAR not found at $WRAPPER_JAR" >&2
  exit 1
fi

exec java -cp "$WRAPPER_JAR" "$WRAPPER_LAUNCHER" "$@"
