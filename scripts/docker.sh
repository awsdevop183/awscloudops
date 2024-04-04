#!/bin/bash
sudo apt update -y
# sudo apt install nginx -y
sudo usermod -aG docker ubuntu
sudo curl https://get.docker.com | bash
sudo apt  install docker-compose -y

echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDFrmCG+i+UxdgDBaxkAf3k7FJa2BvmCrXqwMuErX0SZFJzjLvrJ01l/NrxKbT04bh9HYY0kOHzOIeS28bfE+DjywjKLXCJhdIL4d6d3eOoDzYCFagjDLI+YkD4XbB5TTB0SnTfHDJt+EChYuRJuDVYQnXHSyR9ojVSGEDoyLlDGKNQb0GEmTfJ7Ptgqn4KweGMqMIjS0d2wxGu44x5xSvLoZxHO9zaMqOFIXrT0cupyYGkUCnZf0LQmQMPM/k2kvde6CJH4PxHPZ5BttkBIkEtVI2FC0eFJm+MjmQAcl+KRkFjiShSkDHCc9eeEwUoC6wWAEn3FU8jjTG4c3znce5D k8sppk' >> /home/ubuntu/.ssh/authorized_keys