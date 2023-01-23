#!/bin/sh

echo url="https://api.dynu.com/nic/update?username=$USERNAME&password=$PASSWORD" | curl -k -g -o ~/dynu.log -K -