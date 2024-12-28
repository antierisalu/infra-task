kubeseal < gateway-secret.yaml > sea/gateway-sealed.yaml

kubeseal < billing-secret.yaml > sea/billing-sealed.yaml

kubeseal < inventory-secret.yaml > sea/inventory-sealed.yaml

kubeseal < argocd-secret.yaml > sea/argocd-sealed.yaml