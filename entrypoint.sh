#!/bin/sh -l
echo "Running CheckStyle"
echo "1: ${INPUT_WORKDIR}"
echo "2: ${INPUT_CHECKSTYLE_CONFIG}"
exec java -jar /checkstyle.jar "${INPUT_WORKDIR}" -c "${INPUT_CHECKSTYLE_CONFIG}"  -f xml

# echo "Hello $1"
# time=$(date)
# echo "::set-output name=time::$time"
