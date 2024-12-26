#! /bin/sh

set -eux

# first arg is adddress, second arg is port

# check args
if [ $# -ne 2 ]; then
    echo "Usage: $0 <address> <port>"
    exit 1
fi

adddress=$1
port=$2

# do loop
while true
do
    socat TCP4:$adddress:$port, TCP4:localhost:2222
    # end of loop
done

# end of file