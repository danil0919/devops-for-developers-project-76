setup:
	ansible-playbook -i inventory.ini ./playbooks/setup.yml --become

deploy:
	ansible-playbook -i inventory.ini playbook.yml --become