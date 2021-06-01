# Based on default python Remote-Container Dockerfile
#

# Base image
## See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.177.0/containers/python-3/.devcontainer/base.Dockerfile
ARG PYTHON_VERSION
FROM mcr.microsoft.com/vscode/devcontainers/python:0-${PYTHON_VERSION}

# Install OS packages
# RUN true && \
#     apt-get update && \
#     export DEBIAN_FRONTEND=noninteractive && \
#     apt-get -y install --no-install-recommends \
#         <package>

# Install poetry
## Disable virtual environment because it is both unnecessary in a container and a headache to deal with VSCode Remote-Container
ARG POETRY_VERSION
ENV POETRY_VIRTUALENVS_CREATE="false"
RUN true && \
    pip3 --disable-pip-version-check --no-cache-dir install "poetry==${POETRY_VERSION}" && \
    rm -rf /tmp/pip-tmp
