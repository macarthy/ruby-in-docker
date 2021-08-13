docker build -t ruby-from-source .
docker run --name ruby-from-source ruby-from-source
docker exec –it ruby-from-source /bin/bash

