#!/bin/bash

docker run -it \
           --rm \
           -p 9000:8000 \
           -p 9999:8080 \
           -p 8082:8082 \
           -v $(pwd)/host:/host \
           --name activiti_$ACT_VERSION \
           activiti:$ACT_VERSION "$@"
