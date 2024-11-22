# Groovy Linter Docker Image
This repository provides a Dockerfile to build a Docker image for `npm-groovy-lint`. The image is intended for linting Groovy files and Jenkinsfiles. 

## Usage
### Testing Locally (Build from Git Repository)
1. Clone the Repository

```
git clone https://github.com/takutokishioka/groovy-linter-docker.git
cd groovy-linter-docker
```

2. Build the Docker Image

```
docker build -t groovy-linter:local .
```

3. Run the Linter

```
docker run --rm -v "$PWD:/app" groovy-linter:local npm-groovy-lint --fix <path-to-your-groovy-file>
```


### Using the Image from Docker Hub

1. Pull the Docker Image

```
docker pull takutokishioka/groovy-linter:latest
```

2. Run the Linter

```
docker run --rm -v "$PWD:/app" takutokishioka/groovy-linter:latest npm-groovy-lint --fix <path-to-your-groovy-file>
```