podman machine ssh

curl -s -L https://nvda.org.cn/libnvidia-container/stable/rpm/nvidia-container-toolkit.repo | \
 tee /etc/yum.repos.d/nvidia-container-toolkit.repo && \
 yum install -y nvidia-container-toolkit && \
 nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml && \
 nvidia-ctk cdi list

podman run --rm --device nvidia.com/gpu=all nvidia/cuda:11.0.3-base-ubuntu20.04 nvidia-smi
