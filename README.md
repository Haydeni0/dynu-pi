# dynu-pi

Simple docker container for raspberry pi Dynu dynamic DNS update client

Run the setup script to set your [dynu](https://www.dynu.com/en-US/) username and password in the config file (```./config.env```)

    ./setup.bash

Run docker compose to build and run the container

    docker compose up -d --build
