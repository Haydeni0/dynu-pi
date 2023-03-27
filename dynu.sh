#!/bin/bash

# echo url="https://api.dynu.com/nic/update?username=$USERNAME&password=$PASSWORD" | curl -k -g -o /var/log/dynu.log -K -

# The same thing as above, just slightly more interpretable
URL="https://api.dynu.com/nic/update?username=$USERNAME&password=$PASSWORD"
curl -k -g -o /var/log/dynu.log $URL