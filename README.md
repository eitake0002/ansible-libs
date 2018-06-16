# ansible-utils

Anasible orchestration libraries. Automate installing tools, language, and softwares. 

# Installation

|Role Name  |Tools to be installed  |
|---|---|
|rails  |Ruby on Rails 5.2  |
|mysql  |MySQL5.7  |

# How to use

```
$ ansible-playbook -i hosts site.yml
```

site.yml
```
- name: 
  hosts: all # Target Host
  remote_user: ec2-user # Execution user on target host
  sudo: yes # sudo execution
  roles: # roles to execute
    - rails
    - mysql
```
