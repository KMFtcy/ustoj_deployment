# ustoj_deployment

This project is built to deploy ustoj system on cluster.

We use ansible-playbook to handle the job.

# Preparation

1. Install Ubuntu 20.04 on each cluster machine, set up root account password. 

Then modify `/etc/ssh/sshd_config to allow root login permission. After that, remember to restart sshd service:
```bash
service sshd restart
```

2. Generating ssh key on deploy machine, just run the command on the deploy machine:
```bash
ssh-keygen
```

3. Copy ssh key to all cluster machine, just run the command on the deploy machine for each cluster machine:
```bash
ssh-copy-id root@{cluster machine address}
```

4. Each machine should have different hostname!

## Install dependencies on deploy machine

> * ansible

# Fill out config

1. Write master address and worker address in `./host`

# Ready to deploy

1. Run command under the root directory
```bash
ansible-playbook -i hosts deploy.yml
```