baseimage-ansible
-----------------

Pretty simple Centos & container to use for making ansible based containers.

How
---

```
FROM sjoeboo/baseimage-ansible 

#Decide for yourself, but I would do:
ADD roles.yml /etc/ansible/
ADD playbook.yml /etc/ansible/
RUN ansible-galaxy install --force -r /etc/ansible/roles.yml
RUN ansible-playbook -c=local /etc/ansible/playbook.yml
```
