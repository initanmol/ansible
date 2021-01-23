# Python version to use
ARG PYTHON_VERSION
FROM python:${PYTHON_VERSION}-slim

# Install `ssh` for ansible
RUN apt-get update \
    && apt-get install -y \
        openssh-client \
        vim \
    && rm -rf /var/lib/apt/lists/*

# Ansible version to use
ARG ANSIBLE_VERSION
RUN pip install ansible==${ANSIBLE_VERSION}
