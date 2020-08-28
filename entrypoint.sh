#!/bin/sh -l

echo "Running CheckStyle"

exec ls

exec java -jar /checkstyle.jar "${INPUT_WORKDIR}" -c "${INPUT_CHECKSTYLE_CONFIG}"  -f xml

# echo "Hello $1"
# time=$(date)
# echo "::set-output name=time::$time"
