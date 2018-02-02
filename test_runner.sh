#!/bin/bash

while true; do
inotifywait -q -e modify funkq.sh
if $(bash funkq.sh self_test); then
  echo "$(date) Executing funkq.sh"
  #./funkq.sh
else
  shellcheck funkq.sh
  echo "$(date) FATAL: Self-test failed!"
fi
echo "$(date) Testrunner: Done, monitoring"
done
