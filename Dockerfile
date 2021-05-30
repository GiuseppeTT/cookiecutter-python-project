# This is a simple image to run your project by bash in a container
# Consider modifying to your needs (.e.g, expose ports and run specific scrips)
#

# Base image
ARG PYTHON_VERSION=3.9
FROM python:${PYTHON_VERSION}

# Install OS packages
# RUN true \
#     apt-get update && \
#     apt-get -y install --no-install-recommends \
#         <package>

# Copy project
COPY . /cookiecutter-python-project
WORKDIR /cookiecutter-python-project

# Install poetry and python packages
## Disable virtual environment because it is both unnecessary in and a headache to deal with containers
ARG POETRY_VERSION=1.1.6
ENV POETRY_VIRTUALENVS_CREATE="false"
RUN true && \
    pip3 --disable-pip-version-check --no-cache-dir install "poetry==${POETRY_VERSION}" && \
    rm -rf /tmp/pip-tmp
RUN poetry install --no-dev --no-root

# Define container default execution
CMD ["bash"]
