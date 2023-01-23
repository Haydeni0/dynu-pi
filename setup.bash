#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
CONFIG_FILE=$SCRIPT_DIR/config.env

if ! test -f "$CONFIG_FILE"; then
    echo "Enter dynu username"
    read USERNAME

    # If no username was given, exit
    if [ -z "$USERNAME" ]; then
        echo "No username given, exiting"
        exit $?
    fi

    echo "Enter dynu password:"
    read -s PASSWORD

    # If no password was given, exit
    if [ -z "$PASSWORD" ]; then
        echo "No password given, exiting"
        exit $?
    fi
    echo "Saving to '$CONFIG_FILE'"
    echo USERNAME=$USERNAME >> $CONFIG_FILE
    echo PASSWORD=$PASSWORD >> $CONFIG_FILE
else
    # Display the full filepath of the password env file
    echo "Config file already exists: '$(readlink -f $CONFIG_FILE)'."
fi