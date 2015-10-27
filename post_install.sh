#!/bin/bash

nxapiRoot="/opt/nxapi"


curl -XPUT 'http://localhost:9200/nxapi/' > /dev/null 2>&1
if [ $? -ne 0 ]
then
  echo please verify if your ES server is OK
  exit 1
else
  echo ES server OK...
fi

echo you can now populate date with $(dirname $0)/nxtool.py -c nxapi.json --files=/PATH/TO/LOGFILE.LOG
