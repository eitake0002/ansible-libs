# ansible-utils

Anasible orchestration libraries. Automate installing tools, language, and softwares. 

# Roles

|Role Name  |Tools to be installed  |
|---|---|
|rails  |Ruby on Rails 5.2  |
|mysql  |MySQL5.7  |

# How to use

```
$ ansible-playbook -i hosts site.yml
```

# Setup

1. Edit site.yml to set which role is to be executed.

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
