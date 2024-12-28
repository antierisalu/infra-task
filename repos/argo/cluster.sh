#!/bin/bash

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
ARGO_CD=https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
SEALED_SECRETS=https://github.com/bitnami-labs/sealed-secrets/releases/download/v0.27.3/controller.yaml
SEALED_SECRETS_KEY=$SCRIPT_DIR/sss-sealed-secrets-key.backup.yaml

echo "📁  ${SCRIPT_DIR}"

if [ "$1" != "mini" ]; then
    PORT=$(kubectl get svc | grep 3000: | awk '{print $5}' | cut -d':' -f2 | cut -d'/' -f1) || true
    AWSIP=$(kubectl get svc | grep 3000: | awk '{print $4}') || true
    IP=$(minikube ip) || true
    URL="http://$IP:$PORT"
    AWSURL="http://$AWSIP:$PORT"
fi

getPassword() {
    PASSWORD=$(kubectl get secret -n argocd argocd-initial-admin-secret -o yaml | grep password | awk '{print $2}' | base64 --decode)
}

startCluster() {
    # Install Sealed Secrets
    echo "🔑  Applying sealed secrets and key..."
    kubectl apply -f $SEALED_SECRETS
    kubectl apply -f $SEALED_SECRETS_KEY
    
    # Install ArgoCD
    kubectl create namespace argocd
    kubectl apply -n argocd -f $ARGO_CD

    # Ensure that ArgoCD is running
    while kubectl get pods -n argocd --no-headers | grep -v Running; do sleep 3; echo "⏳  Waiting for ArgoCD to start..."; done

    # Apply secrets
    kubectl apply -f $SCRIPT_DIR/sec -R
    
    # Add the application git repo to argocd
    kubectl apply -f $SCRIPT_DIR/application.yaml
    
    getPassword

    echo "http://localhost:8080 - ArgoCD UI with $PASSWORD"
    
}

startMinikube() {
    #update kubeconfig
        if minikube status | grep -q "Running"; then
            echo "Minikube is already running."
        else
            minikube start --vm-driver=virtualbox
            echo "📢  $(minikube ip)"
        fi
}

checkMinikube() {
    if minikube status | grep -q "Running"; then
        echo "✔️  minikube is running."
    else
        echo "😮  minikube is not running, to start:"
        echo "🚀  $0 mini"
        exit 1
    fi
}

case $1 in
    "deploy-1")
        aws eks update-kubeconfig --name staging-cloud-design --region eu-north-1
        startCluster
        ;;
    "deploy-2")
        aws eks update-kubeconfig --name production-cloud-design --region eu-north-1
        startCluster
        ;;
    "mini")
        startMinikube
        ;;
    "killall")
        minikube delete
        ;;
    "start")
        checkMinikube
        startCluster
        ;;
    "ip")
        echo "argo: http://localhost:8080"
        echo "service at: $URL"
        echo "aws service at: $AWSURL"
        ;;
    "pw")
        getPassword
        echo "Argocd Password: $PASSWORD"
        ;;
    "argo")
        kubectl port-forward svc/argocd-server -n argocd 8080:443
        ;;

    "check")
        echo "Movies:"
        curl $URL/movies
        echo ""
        echo "Health Check:"
        curl -s $URL/health
        ;;
    "post")
        curl -X POST $URL/billing -H "Content-Type: application/json" -d '{"user_id": "22", "number_of_items": "4", "total_amount": "547"}'
        echo ""
        curl -X POST $URL/movies -H "Content-Type: application/json" -d '{"title":"TOP GUN", "description":"Story of a fighter pilot"}'
        ;;
    *)
        echo "Usage: $0 {mini|killall|start|ip|pw|argo|check|post}"
        echo "  mini:     Start minikube"
        echo "  killall:  Delete minikube"
        echo "  start:    Start the cluster"
        echo "  ip:       Get the IP address of the cluster and ArgoCD"
        echo "  pw:       Get the password for ArgoCD"
        echo "  argo:     Port forward to the ArgoCD UI"
        echo "  check:    Check the health of the gateway"
        echo "  post:     Post data to the gateway"
        ;;
esac