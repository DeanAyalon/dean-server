# Use
This is a monorepo containing all the services being ran on my server, you may find it [here](https://deanayalon.com), so long as my computer is on.

## Environment
First you must set up your .env file, to do so, duplicate template.env
> If running a service standalone, edit the .env file within the service directory

## Run
### Entire Stack
To use the entire stack, run `docker compose <command>` from the context of repository.

#### Single Service within the Stack
To use a single service within this stack, run `docker compose <command> <service>` from the context of this repository.

### Standalone Service
To use a single service as a standalone, separate from the stack's project, run `docker compose <command>` from the context of the service directory.
> Add `-p <project>` to run the container under a specific stack

## Profiles 
This repository contains separate configuration for live and dev containers, so that they can run individually without interfering with each other

Use: `docker compose --profile <profile> <command>`

Profiles:
* **live**: Production services
* **dev**: Development-stage services. Watch mode is configured for dev profiles.
* **legacy**: Legacy services, not updated or supported.
**beta**: Beta version of services, either using beta images, or experimental features, use with care.

## Featured Technologies
[![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)](https://github.com/DeanAyalon/verdaccio/pkgs/container/verdaccio)

[![Verdaccio](https://img.shields.io/badge/Verdaccio-4B5E40.svg?style=for-the-badge&logo=verdaccio&logoColor=white)](https://npmjs.com)
[![Nginx](https://img.shields.io/badge/nginx-009639.svg?style=for-the-badge&logo=nginx&logoColor=white)](https://npmjs.com)

[![NPM](https://img.shields.io/badge/NPM-%23CB3837.svg?style=for-the-badge&logo=npm&logoColor=white)](https://npmjs.com)
![Shell](https://img.shields.io/badge/shell-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)
[![GitHub Actions](https://img.shields.io/badge/github-actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)](https://github.com/DeanAyalon/verdaccio/actions)