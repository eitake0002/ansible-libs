# ansible-utils

Ansible orchestration libraries. Automate installing tools, language, and softwares. 

# Roles

|Role Name  |Tools to be installed  |OS|
|---|---|---|
|rails  |Ruby on Rails 5.2  |Amazon Linux|
|mysql  |MySQL5.7  |Amazon Linux|

# How to use

```
$ ansible-playbook -i hosts site.yml
```

# Setup

1. Setup SSH hostname 

~/.ssh/config
```
Host [SSH HostName]
  User [username]
  Port [portNumber]
  HostName [HostName]
  IdentitfyFile [private_key_path]
```

2. Edit Inventory file

hosts
```
[SSH HostName]
```

Reference: 
<a href="https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html" target="_blank">Working with Inventory</a>

3. Edit site.yml to set which role is to be executed.

site.yml
```
- name: 
  # Target Host
  hosts: all
  # Execution user on target host
  remote_user: ec2-user
  # sudo execution
  sudo: yes
  # roles to be executed
  roles:
    - rails
    - mysql
```
