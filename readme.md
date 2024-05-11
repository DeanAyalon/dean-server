# Use
This is a monorepo containing all the services being ran on my server.

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