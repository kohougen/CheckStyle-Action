#!/bin/sh -l
echo "Running CheckStyle"
ls
echo "111111"
cd ..
ls
echo "222222"
exec java -jar /checkstyle.jar "${INPUT_WORKDIR}" -c "${INPUT_CHECKSTYLE_CONFIG}"  -f xml

# echo "Hello $1"
# time=$(date)
# echo "::set-output name=time::$time"
