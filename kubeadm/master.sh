
## Master Node

# 1. Initialize the Kubernetes master node.

    sudo kubeadm init


# 2 Set up local kubeconfig (both for root user and normal user):

    mkdir -p $HOME/.kube
    sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
    sudo chown $(id -u):$(id -g) $HOME/.kube/config



# 3. Apply Weave network:

    kubectl apply -f https://github.com/weaveworks/weave/releases/download/v2.8.1/weave-daemonset-k8s.yaml


# 5. Generate a token for worker nodes to join:

    sudo kubeadm token create --print-join-command

# 6. Expose port 6443 in the Security group for the Worker to connect to Master Node
