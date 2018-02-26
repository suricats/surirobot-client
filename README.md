# Surirobot

Dockerfiles set for an easy deployment of client & modules.

## Requirements

For Ubuntu 16.04 LTS:

```bash
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce
sudo curl -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```

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
xhost local:root
docker-compose up
```
