# Purpose
This is a monorepo containing all the services being ran on my server, you may find it [here](https://deanayalon.com), so long as my computer is on.

## Environment
First you must set up your .env file, to do so, duplicate template.env
> If running a service standalone, edit the .env file within the service directory

## Use
### Entire Stack
To use the entire stack, run `docker compose <command>` from the context of repository.

#### Single Service within the Stack
To use a single service within this stack, run `docker compose <command> <service>` from the context of this repository.

### Standalone Service
To use a single service as a standalone, separate from the stack's project, run `docker compose <command>` from the context of the service directory.
> Add `-p <project>` to run the container under a specific stack

## Profiles 
This repository contains separate configuration for different containers according to profile. 

Use: `docker compose --profile <profile> <command>`

### General profiles:
* **live**: Production services
* **dev**: Development-stage services. Watch mode is configured for dev profiles.
* **legacy**: Legacy services, not updated or supported.
* **beta**: Beta version of services, either using beta images, or experimental features, use with care.<br>

### Module-specific profiles:
#### Nginx
* **cert**: Creates the manual certificate request container (WIP)
* **cert-test**: Creates the manual Let'sEncrypt dry-run request container (WIP)

#### FMS
* **prep**: Creates the prep container for initial FileMaker Server installation and imaging process

## Featured Technologies
[![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)](https://github.com/DeanAyalon/verdaccio/pkgs/container/verdaccio)

[![Claris FileMaker](https://img.shields.io/badge/claris-filemaker-black.svg?style=for-the-badge&logo=claris&logoColor=white)](https://claris.com)
[![FileMaker Server](https://img.shields.io/badge/claris-FileMaker_Server-black.svg?style=for-the-badge&logo=claris&logoColor=white)](https://www.credly.com/earner/earned/badge/bbdd64a9-b1e0-48ac-9ab0-bbfb4d737204) 
[![Devin.fm](https://custom-icon-badges.demolab.com/badge/devin.fm-120e6d.svg?style=for-the-badge&logo=devin.fm)](https://devin.fm)

[![Verdaccio](https://img.shields.io/badge/Verdaccio-4B5E40.svg?style=for-the-badge&logo=verdaccio&logoColor=white)](https://github.com/verdaccio/verdaccio)
[![Nginx](https://img.shields.io/badge/nginx-009639.svg?style=for-the-badge&logo=nginx&logoColor=white)](https://nginx.com)<br>
[nginx-proxy](https://github.com/nginx-proxy/nginx-proxy)

[![NPM](https://img.shields.io/badge/NPM-%23CB3837.svg?style=for-the-badge&logo=npm&logoColor=white)](https://npmjs.com)
![Shell](https://img.shields.io/badge/shell-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)
[![GitHub Actions](https://img.shields.io/badge/github-actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)](https://github.com/DeanAyalon/verdaccio/actions)

[![VSCode](https://img.shields.io/badge/vscode-white.svg?style=for-the-badge&logo=visual-studio-code&logoColor=007ACC)](https://github.com/DeanAyalon)
