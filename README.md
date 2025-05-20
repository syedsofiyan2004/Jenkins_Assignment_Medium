
# Jenkins Docker-in-Docker (DinD) Assignment

## Objective
Demonstrate what happens when you try to run Docker commands inside a Jenkins container — a setup known as Docker-in-Docker (DinD).

## Included Files
- `Dockerfile`: A basic Dockerfile that simulates a small application.
- `Jenkinsfile`: Defines two stages — one to build a Docker image, the other to run it.
- `README.md`: This file with explanations.

## Expected Result
When you run this Jenkins pipeline inside a Jenkins container (not having access to host Docker), you will get the following error:

```
Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock
```

## Reason
Jenkins is running inside a Docker container. Containers do not have access to the host’s Docker engine unless you explicitly mount the Docker socket (which we are NOT doing here on purpose).

Therefore, when the pipeline tries to run `docker build` or `docker run`, it fails due to missing permissions to access the Docker daemon.

This behavior is intentional and demonstrates a common pitfall when using Docker-in-Docker without proper configuration.

DO NOT FIX THIS ERROR for the assignment — the goal is to observe and explain it.
