setup:
	ansible-playbook -i inventory.ini ./playbooks/setup.yml --become

deploy:
	ansible-playbook -i inventory.ini playbook.yml --become  --ask-vault-pass

encrypt-vars:
	ansible-vault encrypt group_vars/webservers/vault.yml

decrypt-vars:
	ansible-vault decrypt group_vars/webservers/vault.yml