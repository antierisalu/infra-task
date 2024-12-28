# Details

Date : 2024-12-28 21:23:01

Directory /home/nitroarch/kood/code-keeper

Total : 94 files,  2962 codes, 406 comments, 452 blanks, all 3820 lines

[Summary](results.md) / Details / [Diff Summary](diff.md) / [Diff Details](diff-details.md)

## Files
| filename | language | code | comment | blank | total |
| :--- | :--- | ---: | ---: | ---: | ---: |
| [README.md](/README.md) | Markdown | 34 | 0 | 31 | 65 |
| [ansible/ansible.cfg](/ansible/ansible.cfg) | Properties | 2 | 0 | 1 | 3 |
| [ansible/docker-compose-gitlab.yaml](/ansible/docker-compose-gitlab.yaml) | YAML | 22 | 0 | 1 | 23 |
| [ansible/docker-compose-runner.yaml](/ansible/docker-compose-runner.yaml) | YAML | 21 | 0 | 1 | 22 |
| [ansible/example-vault.yml](/ansible/example-vault.yml) | YAML | 34 | 0 | 1 | 35 |
| [ansible/playbooks/00-gitlab.yaml](/ansible/playbooks/00-gitlab.yaml) | YAML | 29 | 0 | 4 | 33 |
| [ansible/playbooks/01-gitlab-runner.yaml](/ansible/playbooks/01-gitlab-runner.yaml) | YAML | 24 | 0 | 5 | 29 |
| [ansible/playbooks/02-pw.yaml](/ansible/playbooks/02-pw.yaml) | YAML | 16 | 0 | 4 | 20 |
| [ansible/playbooks/03-new-runner.yaml](/ansible/playbooks/03-new-runner.yaml) | YAML | 42 | 0 | 7 | 49 |
| [ansible/playbooks/04-add-ssh.yaml](/ansible/playbooks/04-add-ssh.yaml) | YAML | 30 | 0 | 4 | 34 |
| [ansible/playbooks/90-stop-rm-gitlab.yaml](/ansible/playbooks/90-stop-rm-gitlab.yaml) | YAML | 48 | 0 | 7 | 55 |
| [ansible/playbooks/git-repos/00-create-group.yaml](/ansible/playbooks/git-repos/00-create-group.yaml) | YAML | 18 | 0 | 2 | 20 |
| [ansible/playbooks/git-repos/01-add-vars.yaml](/ansible/playbooks/git-repos/01-add-vars.yaml) | YAML | 37 | 0 | 6 | 43 |
| [ansible/playbooks/git-repos/02-init-repos.yaml](/ansible/playbooks/git-repos/02-init-repos.yaml) | YAML | 51 | 0 | 9 | 60 |
| [ansible/playbooks/misc/20-rm-git-dir.yaml](/ansible/playbooks/misc/20-rm-git-dir.yaml) | YAML | 6 | 0 | 1 | 7 |
| [ansible/playbooks/misc/30-rm-projects.yaml](/ansible/playbooks/misc/30-rm-projects.yaml) | YAML | 34 | 0 | 6 | 40 |
| [ansible/playbooks/misc/40-disable-rootpw.yaml](/ansible/playbooks/misc/40-disable-rootpw.yaml) | YAML | 17 | 0 | 2 | 19 |
| [ansible/playbooks/misc/50-testConnection.yaml](/ansible/playbooks/misc/50-testConnection.yaml) | YAML | 5 | 0 | 1 | 6 |
| [repos/argo/application.yaml](/repos/argo/application.yaml) | YAML | 19 | 0 | 2 | 21 |
| [repos/argo/cluster.sh](/repos/argo/cluster.sh) | Shell Script | 99 | 7 | 16 | 122 |
| [repos/argo/sec/argocd-sealed.yaml](/repos/argo/sec/argocd-sealed.yaml) | YAML | 27 | 0 | 1 | 28 |
| [repos/argo/sec/billing-sealed.yaml](/repos/argo/sec/billing-sealed.yaml) | YAML | 32 | 0 | 1 | 33 |
| [repos/argo/sec/gateway-sealed.yaml](/repos/argo/sec/gateway-sealed.yaml) | YAML | 26 | 0 | 1 | 27 |
| [repos/argo/sec/inventory-sealed.yaml](/repos/argo/sec/inventory-sealed.yaml) | YAML | 29 | 0 | 1 | 30 |
| [repos/argocd-secret.yaml](/repos/argocd-secret.yaml) | YAML | 12 | 0 | 0 | 12 |
| [repos/billing-secret.yaml](/repos/billing-secret.yaml) | YAML | 17 | 0 | 0 | 17 |
| [repos/billing/.gitlab-ci.yml](/repos/billing/.gitlab-ci.yml) | YAML | 66 | 0 | 8 | 74 |
| [repos/billing/Dockerfile](/repos/billing/Dockerfile) | Docker | 8 | 0 | 7 | 15 |
| [repos/billing/consumer.js](/repos/billing/consumer.js) | JavaScript | 79 | 1 | 18 | 98 |
| [repos/billing/db/Dockerfile](/repos/billing/db/Dockerfile) | Docker | 6 | 0 | 5 | 11 |
| [repos/billing/db/setup-db.sql](/repos/billing/db/setup-db.sql) | MS SQL | 24 | 3 | 7 | 34 |
| [repos/billing/db/setup_db.sh](/repos/billing/db/setup_db.sh) | Shell Script | 12 | 1 | 10 | 23 |
| [repos/billing/package.json](/repos/billing/package.json) | JSON | 19 | 0 | 1 | 20 |
| [repos/billing/test/billing.test.js](/repos/billing/test/billing.test.js) | JavaScript | 13 | 1 | 4 | 18 |
| [repos/billing/test/scanvars.js](/repos/billing/test/scanvars.js) | JavaScript | 15 | 3 | 7 | 25 |
| [repos/gateway-secret.yaml](/repos/gateway-secret.yaml) | YAML | 11 | 0 | 0 | 11 |
| [repos/gateway/.gitlab-ci.yml](/repos/gateway/.gitlab-ci.yml) | YAML | 66 | 0 | 8 | 74 |
| [repos/gateway/Dockerfile](/repos/gateway/Dockerfile) | Docker | 10 | 1 | 8 | 19 |
| [repos/gateway/package.json](/repos/gateway/package.json) | JSON | 24 | 0 | 1 | 25 |
| [repos/gateway/server.js](/repos/gateway/server.js) | JavaScript | 53 | 0 | 11 | 64 |
| [repos/gateway/test/gateway.test.js](/repos/gateway/test/gateway.test.js) | JavaScript | 13 | 1 | 4 | 18 |
| [repos/gateway/test/scanvars.js](/repos/gateway/test/scanvars.js) | JavaScript | 15 | 4 | 8 | 27 |
| [repos/gateway/testpipeline.yaml](/repos/gateway/testpipeline.yaml) | YAML | 95 | 0 | 12 | 107 |
| [repos/inventory-secret.yaml](/repos/inventory-secret.yaml) | YAML | 14 | 0 | 0 | 14 |
| [repos/inventory/.gitlab-ci.yml](/repos/inventory/.gitlab-ci.yml) | YAML | 66 | 0 | 8 | 74 |
| [repos/inventory/Dockerfile](/repos/inventory/Dockerfile) | Docker | 8 | 1 | 8 | 17 |
| [repos/inventory/db/Dockerfile](/repos/inventory/db/Dockerfile) | Docker | 6 | 0 | 5 | 11 |
| [repos/inventory/db/setup-db.sql](/repos/inventory/db/setup-db.sql) | MS SQL | 25 | 4 | 7 | 36 |
| [repos/inventory/db/setup_db.sh](/repos/inventory/db/setup_db.sh) | Shell Script | 12 | 5 | 10 | 27 |
| [repos/inventory/package.json](/repos/inventory/package.json) | JSON | 25 | 0 | 1 | 26 |
| [repos/inventory/server.js](/repos/inventory/server.js) | JavaScript | 97 | 10 | 14 | 121 |
| [repos/inventory/test/inventory.test.js](/repos/inventory/test/inventory.test.js) | JavaScript | 13 | 1 | 4 | 18 |
| [repos/inventory/test/scanvars.js](/repos/inventory/test/scanvars.js) | JavaScript | 15 | 4 | 8 | 27 |
| [repos/manifests/README.md](/repos/manifests/README.md) | Markdown | 1 | 0 | 0 | 1 |
| [repos/manifests/autoscale/autoscale.yaml](/repos/manifests/autoscale/autoscale.yaml) | YAML | 0 | 145 | 0 | 145 |
| [repos/manifests/billing/billing-db.yaml](/repos/manifests/billing/billing-db.yaml) | YAML | 49 | 0 | 1 | 50 |
| [repos/manifests/billing/billing.yaml](/repos/manifests/billing/billing.yaml) | YAML | 40 | 0 | 3 | 43 |
| [repos/manifests/gateway/gateway.yaml](/repos/manifests/gateway/gateway.yaml) | YAML | 51 | 0 | 2 | 53 |
| [repos/manifests/inventory/inventory-db.yaml](/repos/manifests/inventory/inventory-db.yaml) | YAML | 49 | 0 | 1 | 50 |
| [repos/manifests/inventory/inventory.yaml](/repos/manifests/inventory/inventory.yaml) | YAML | 55 | 0 | 2 | 57 |
| [repos/manifests/pv/pv-billing.yaml](/repos/manifests/pv/pv-billing.yaml) | YAML | 14 | 0 | 0 | 14 |
| [repos/manifests/pv/pv-inventory.yaml](/repos/manifests/pv/pv-inventory.yaml) | YAML | 14 | 0 | 0 | 14 |
| [repos/manifests/rabbitmq/rabbitmq.yaml](/repos/manifests/rabbitmq/rabbitmq.yaml) | YAML | 40 | 0 | 1 | 41 |
| [repos/prod-manifests/README.md](/repos/prod-manifests/README.md) | Markdown | 1 | 0 | 0 | 1 |
| [repos/prod-manifests/autoscale/autoscale.yaml](/repos/prod-manifests/autoscale/autoscale.yaml) | YAML | 0 | 145 | 0 | 145 |
| [repos/prod-manifests/billing/billing-db.yaml](/repos/prod-manifests/billing/billing-db.yaml) | YAML | 49 | 0 | 1 | 50 |
| [repos/prod-manifests/billing/billing.yaml](/repos/prod-manifests/billing/billing.yaml) | YAML | 40 | 0 | 3 | 43 |
| [repos/prod-manifests/gateway/gateway.yaml](/repos/prod-manifests/gateway/gateway.yaml) | YAML | 51 | 0 | 2 | 53 |
| [repos/prod-manifests/inventory/inventory-db.yaml](/repos/prod-manifests/inventory/inventory-db.yaml) | YAML | 49 | 0 | 1 | 50 |
| [repos/prod-manifests/inventory/inventory.yaml](/repos/prod-manifests/inventory/inventory.yaml) | YAML | 55 | 0 | 2 | 57 |
| [repos/prod-manifests/pv/pv-billing.yaml](/repos/prod-manifests/pv/pv-billing.yaml) | YAML | 14 | 0 | 0 | 14 |
| [repos/prod-manifests/pv/pv-inventory.yaml](/repos/prod-manifests/pv/pv-inventory.yaml) | YAML | 14 | 0 | 0 | 14 |
| [repos/prod-manifests/rabbitmq/rabbitmq.yaml](/repos/prod-manifests/rabbitmq/rabbitmq.yaml) | YAML | 40 | 0 | 1 | 41 |
| [repos/rabbitmq/.gitlab-ci.yml](/repos/rabbitmq/.gitlab-ci.yml) | YAML | 29 | 8 | 4 | 41 |
| [repos/rabbitmq/Dockerfile](/repos/rabbitmq/Dockerfile) | Docker | 32 | 0 | 14 | 46 |
| [repos/rabbitmq/entrypoint.sh](/repos/rabbitmq/entrypoint.sh) | Shell Script | 6 | 4 | 2 | 12 |
| [repos/rabbitmq/package.json](/repos/rabbitmq/package.json) | JSON | 18 | 0 | 1 | 19 |
| [repos/rabbitmq/server.js](/repos/rabbitmq/server.js) | JavaScript | 32 | 0 | 9 | 41 |
| [repos/sealsecrets.sh](/repos/sealsecrets.sh) | Shell Script | 4 | 0 | 3 | 7 |
| [repos/tf/.gitlab-ci.yml](/repos/tf/.gitlab-ci.yml) | YAML | 58 | 0 | 9 | 67 |
| [repos/tf/.terraform.lock.hcl](/repos/tf/.terraform.lock.hcl) | HCL | 40 | 2 | 3 | 45 |
| [repos/tf/1-local.tf](/repos/tf/1-local.tf) | Terraform | 12 | 0 | 2 | 14 |
| [repos/tf/10-autoscale.tf](/repos/tf/10-autoscale.tf) | Terraform | 0 | 51 | 6 | 57 |
| [repos/tf/2-provider.tf](/repos/tf/2-provider.tf) | Terraform | 13 | 0 | 3 | 16 |
| [repos/tf/3-network.tf](/repos/tf/3-network.tf) | Terraform | 28 | 0 | 11 | 39 |
| [repos/tf/4-subnet.tf](/repos/tf/4-subnet.tf) | Terraform | 42 | 0 | 8 | 50 |
| [repos/tf/5-routes.tf](/repos/tf/5-routes.tf) | Terraform | 36 | 0 | 10 | 46 |
| [repos/tf/6-eks.tf](/repos/tf/6-eks.tf) | Terraform | 39 | 0 | 9 | 48 |
| [repos/tf/7-nodes.tf](/repos/tf/7-nodes.tf) | Terraform | 66 | 2 | 15 | 83 |
| [repos/tf/8-iam.tf](/repos/tf/8-iam.tf) | Terraform | 108 | 1 | 16 | 125 |
| [repos/tf/9-cloudwatch.tf](/repos/tf/9-cloudwatch.tf) | Terraform | 76 | 0 | 6 | 82 |
| [repos/tf/autoscale.yaml](/repos/tf/autoscale.yaml) | YAML | 144 | 1 | 0 | 145 |
| [repos/tf/init.sh](/repos/tf/init.sh) | Shell Script | 11 | 0 | 1 | 12 |
| [repos/tf/readme.md](/repos/tf/readme.md) | Markdown | 1 | 0 | 1 | 2 |

[Summary](results.md) / Details / [Diff Summary](diff.md) / [Diff Details](diff-details.md)