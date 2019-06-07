#!/bin/bash

echo
echo "docker run -it --rm \\ "
echo "  --name httpbin \\ "
echo "  -p 8080:80 \\ "
echo "  kennethreitz/httpbin "
echo
echo
echo "open http://localhost:8080"
echo

docker run -it --rm \
  --name httpbin \
  -p 8080:80 \
  kennethreitz/httpbin

