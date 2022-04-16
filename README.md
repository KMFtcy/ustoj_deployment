# ustoj_deployment

This project is built to deploy ustoj system on cluster.

We use ansible-playbook to handle the job.

# Install dependencies on deploy machine

> * ansible

# Fill out config

1. Write master address and worker address in `./host`

# Ready to deploy

1. Run command under the root directory
```bash
ansible-playbook -i hosts deploy.yml
```