# k8s-hcloud
Deploy kubernetes on Hetzner cloud - and all related infrastructure deployments



## Complete cluster setup
1. Configure variables
- Cluster configuration in `vars/inventory.yml`
- Cloudflare access token in `vars/vault_cloudflare_token.yml`
- Hetzner Cloud access token in `vars/vault_hcloud_token.yml`

2. Prepare the local environment
- Run the playbook `ansible-playbook play_local_env.yml`

3. Deploy the cluster
- Run the script `replicas-cluster-<cluster domain>/cluster_up.sh`

##### Playbooks
__play_delete_cluster.yml__  
This playbook deletes a cluster based on the generated inventory file.  
Usage:  
```shell
ansible-playbook -i replicas-cluster-<cluster domain>/inventory.ini play_delete_cluster.yml --ask-vault-pass
```
