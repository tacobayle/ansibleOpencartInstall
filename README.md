# ansible Opencart Install

## Goals
Spin up the OpenCart application in a distributed fashion (2 web frontends, 1 mysql backend)

## Prerequisites:
- Make sure the userdata scripts have been applied first
- Make sure Ansible is installed in the orchestrator VM
- Make sure you have the following variable defined:
```
mysql_db_hostname: ip_of_mysql_server
domainName: my_domain_name
```

## Environment:

### Ansible

```
ansible 2.9.12
  config file = None
  configured module search path = ['/home/nic/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  ansible python module location = /home/nic/.local/lib/python3.8/site-packages/ansible
  executable location = /home/nic/.local/bin/ansible
  python version = 3.8.2 (default, Jul 16 2020, 14:00:26) [GCC 9.3.0]
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

## Use the the playbook to:
1. Configure mysql
2. Configure Opencart/Apache

## Run the playbook:
```
ansible-playbook -i hosts local.yml
```
