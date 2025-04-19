#/bin/bash

if ps -ef | grep target/demo-0.0.1-SNAPSHOT.jar | grep -v grep
then
  echo "Killing existing process"
fi

if nohup java -jar -Dserver.port=80 target/demo-0.0.1-SNAPSHOT.jar &
then
  echo "Deployed New Application"
fi
