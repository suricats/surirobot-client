# Surirobot [WIP]

Dockerfiles set for an easy deployment of client & modules.

## Module facerecognition

To get the suricats face pack, follow these instructions:

```bash
cp .env.example .env
nano .env
```

Fill the login & password fields

```bash
tools/get-people-data.sh
```

## RUN

```bash
docker-compose up
```
