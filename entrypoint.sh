#!/bin/sh

# Save the environment variables to a file that can be read by cron, as cron runs jobs in its own environment
# See this SO Q/A: https://stackoverflow.com/questions/27771781/how-can-i-access-docker-set-environment-variables-from-a-cron-job
printenv | grep -v "no_proxy" >> /etc/environment

# Start cron and run indefinitely to keep the container up
cron -f