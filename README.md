# ansible Opencart Install

## Goals
Spin up the OpenCart application in a distributed fashion (2 web frontends, 1 mysql backend)

## Prerequisites:
1. Run userdatascript: userdata/mysql.sh in the db server
2. Run userdatascript: userdata/opencart.sh in the frontend server(s)
3. Make sure Ansible is installed in the orchestrator VM
4. Make sure you have an ansible hosts ready:
```
---
all:
  children:
    backend:
      hosts:
        192.168.142.132:
        192.168.142.133:
    mysql:
      hosts:
        192.168.142.134:
  vars:
    ansible_user: nic
    ansible_ssh_private_key_file: '~/.ssh/id_rsa.local'
    ansible_ssh_common_args: '-o StrictHostKeyChecking=no'
```

## Environment:

### Ansible

```
avi@ansible:~/ansible/opencartInstall/userdata$ ansible --version
ansible 2.9.5
  config file = /etc/ansible/ansible.cfg
  configured module search path = [u'/home/avi/.ansible/plugins/modules', u'/usr/share/ansible/plugins/modules']
  ansible python module location = /home/avi/.local/lib/python2.7/site-packages/ansible
  executable location = /home/avi/.local/bin/ansible
  python version = 2.7.12 (default, Oct  8 2019, 14:14:10) [GCC 5.4.0 20160609]
avi@ansible:~/ansible/opencartInstall/userdata$

```

### Opencart version

```
https://github.com/opencart/opencart/releases/download/3.0.3.5/opencart-3.0.3.5.zip
```

### Mysql version

```
nic@bionic3:~$ mysql -V
mysql  Ver 14.14 Distrib 5.7.30, for Linux (x86_64) using  EditLine wrapper
nic@bionic3:~$
```

## Input/Parameters:

1. All the paramaters/variables are stored in vars/params.yml

## Use the the playbook to:
1. Configure mysql
2. Configure Opencart/Apache

## Run the playbook:
```
ansible-playbook -i hosts main.yml
```
