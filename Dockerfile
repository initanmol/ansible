# Python version to use
ARG PYTHON_VERSION
FROM python:${PYTHON_VERSION}-slim

# Ansible version to use
ARG ANSIBLE_VERSION
RUN pip install ansible==${ANSIBLE_VERSION}