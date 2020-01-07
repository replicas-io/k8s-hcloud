# k8s-hcloud
Deploy kubernetes on Hetzner cloud - and all related infrastructure deployments


## Core concepts
This collection of playbooks does the following steps:  
1. Deploy the network topology
2. Deploy the machines
3. Deploy and attach disks for the storage cluster
4. Setup DNS
5. Generate an inventory file
6. Start kubespray
7. Deploy MetalLB loadbalancer and setup DNS
8. Deploy Nginx ingress controller
9. Deploy the Let's encrypt certificate manager for ingress routes
10. Deploy Operator Lifecycle Management
11. Deploy the CEPH operator
12. Deploy a CEPH cluster for PVC storage
13. Deploy the Keycloak operator
14. Deploy a Keycloak cluster
15. Integrate the Keycloak cluster as identity provider for k8s
16. Deploy a Admission webhook for automatically injecting Keycloak proxies if desired
17. Deploy the k8s dashboard secured by a Keycloak proxy

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
