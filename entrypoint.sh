#!/bin/sh -l
echo "Running CheckStyle"
cd ..
ls
echo "Test1"
exec java -jar /checkstyle.jar "${INPUT_WORKDIR}" -c "${INPUT_CHECKSTYLE_CONFIG}"  -f xml
echo "Test2"

# echo "Hello $1"
# time=$(date)
# echo "::set-output name=time::$time"
