# ansible-playbook ./playbooks/template.yml --user root -i ./inventory/pve -v
#ansible-playbook ./playbooks/apt.yml --user bill -i ./inventory/hosts
#ansible-playbook ./playbooks/qemu-guest-agent.yml --user bill -i ./inventory/hosts
ansible-playbook ./playbooks/docker.yml --user bill -i ./inventory/hosts