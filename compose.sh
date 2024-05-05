#!/bin/bash

# Execution context
cd "$(dirname "$0")"

# Service modules
modules=("nginx" "verdaccio")

help() {
    echo "Usage: $0 [-m] [-e] [args...]"
    echo "Options:"
    echo " -m    Interactively choose modules to bring up."
    echo " -e    Interactively choose .env file for each module."
    echo " args  Specify the docker compose command to be ran."
}

# Flags
while getopts "ehm" opt; do
    case ${opt} in
        e ) custom_env=true ;;
        h ) help; exit 2 ;;
        m ) select_modules=true ;;
        * ) help; exit 1 ;;
    esac
done
shift $((OPTIND -1))

args=$@

# Compose the modules
for module in "${modules[@]}"; do
    if [ $select_modules ]; then
        read -p "Execute the command for $module? [Y/n] " choice
        if [[ $choice =~ ^[Nn]$ ]]; then
            echo "Skipping $module..."
            continue
        fi
    fi

    if [ $custom_env ]; then 
        echo "Choose an .env file for $module (default: $module/.env)"
        read -p "$module/" env_file
        [ ! -z $env_file ] && env_cmd="--env-file $module/$env_file"
    fi

    echo "$module: > docker compose $args"
    [ ! -z $env_file ] && echo "env-file $env_file"
    # Use Docker Compose to bring up the module
    docker compose -f $module/docker-compose.yml $env_cmd $args
done
