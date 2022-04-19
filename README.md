# ustoj_deployment

This project is designed to deploy ustoj system on cluster.

We use ansible-playbook to handle the job.

# Preparation

## Deploy machine
A deploy machine is one which is used for deploy deploy the cluster. It is outside the cluster and once the deployment is done, its work is also done.

A deploy machine can be your laptop or a remote accessor. A deploy machine should satisfy the following reaquirements:
> * A Linux OS system
> * Ansible installed
> * Kubectl installed

## Cluster machine
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

# Deploy

1. Write master address and worker address in `./host`. Remember to appoint different hostname to each machine.

2. Run command under the root directory
```bash
ansible-playbook -i hosts deploy.yml
```