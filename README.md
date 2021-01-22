### Ansible Docker Image

- Ready to use Ansible docker images are available at [hub.docker.com/anmolsharmaa/ansible](https://hub.docker.com/r/anmolsharmaa/ansible)
- As of now, by default, I use `python 3.8` for building Ansible docker images.  
- You can build your own image using commands below:
    ```
    export PYTHON_VERSION=<set python version>
    export ANSIBLE_VERSION=<set ansible version>

    docker build --arg PYTHON_VERSION=${PYTHON_VERSION} \
                 --arg ANSIBLE_VERSION=${ANSIBLE_VERSION} \
                 -t ansible:${ANSIBLE_VERSION}-py_${PYTHON_VERSION}
                 -f Dockerfile .
    ```

### Running ansible-playbook Using Container

This is a sample example, where I assume all Ansible code is in a `./playbooks` directory on docker host.

```
docker pull anmolsharmaa/ansible:2.9

docker run -i --rm \
    -v ./playbooks:/playbooks 
    anmolsharmaa/ansible:2.9 \
    ansible-playbook /playbooks/sample.yaml \
        -i /playbooks/inventory/hosts
```