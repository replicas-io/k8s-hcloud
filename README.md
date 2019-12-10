# k8s-hcloud
Deploy kubernetes on Hetzner cloud - and all related infrastructure deployments



##### Playbooks
__play_delete_cluster.yml__  
This playbook deletes a cluster based on the generated inventory file.  
Usage:  
```shell
ansible-playbook -i replicas-cluster-<cluster domain>/inventory.ini play_delete_cluster.yml --ask-vault-pass
```
