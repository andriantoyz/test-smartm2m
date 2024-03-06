- Run the install-nginx playbook using this command : 
```
ansible-playbook install_nginx.yaml -i inventory.yaml
```
- Run the custom-index-page playbook using : 
```
ansible-playbook custom-index-page.yaml -i inventory.yaml
```
- Run the load-balancer-setup using :
```
ansible-playbook load-balancer-setup.yaml -i inventory.yaml
