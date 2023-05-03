---
tags: tools
---
# Ubuntu 22.04 with nvidia-cuda-cudnn-pytorch-tensorflow-venv
![](https://i.imgur.com/1a26jT9.png)

```bash
lsb_release -a
```

![](https://i.imgur.com/NxZW0Hl.png)

## Remote Desktop
> windows to ubuntu
```bash
sudo apt install xrdp

sudo systemctl enable --now xrdp

sudo ufw allow from any to any port 3389 proto tcp
```

You can log in using remote desktop.

## ssh
### Create from ubuntu
```bash
ssh-keygen

cat id_rsa.pub >> authorized_keys

chmod 600 authorized_keys

chmod 700 ~/.ssh
```

```bash
code /etc/ssh/sshd_config

RSAAuthentication yes
PubkeyAuthentication yes
PermitRootLogin yes

service sshd restart

# Close password login after confirming successful login.
PasswordAuthentication no
```

> To put id_rsa inside the .ssh folder on Windows.

### Create from windows
```bash
ssh-keygen
```

```bash
# Copy id_rsa.pub to the .ssh folder on Linux.
cat id_rsa.pub >> authorized_keys
```

## Nvidia Driver
```bash
sudo apt-get install -y nvidia-common

sudo add-apt-repository ppa:graphics-drivers

sudo apt update

# ubuntu-drivers devices
ubuntu-drivers list

sudo apt install nvidia-driver-515

sudo reboot

nvidia-smi
```

![](https://i.imgur.com/NHcZBsK.png)

## CUDA
[CUDA Toolkit 11.7 Downloads](https://developer.nvidia.com/cuda-11-7-0-download-archive?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=22.04)

[Version Requirements](https://docs.nvidia.com/cuda/cuda-toolkit-release-notes/index.html)

![](https://i.imgur.com/0tMFE7X.png)

```bash
wget https://developer.download.nvidia.com/compute/cuda/11.7.0/local_installers/cuda_11.7.0_515.43.04_linux.run

sudo sh cuda_11.7.0_515.43.04_linux.run
```

Because the nvidia driver has been installed, so did not choose to install the nvidia driver, there will be a warning message, you can ignore it

![](https://i.imgur.com/ywJCOEG.png)

Add to `.bashrc`

```bash
export PATH=/usr/local/cuda/bin:$PATH  
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH
export CUDA_HOME=/usr/local/cuda
```

```bash
source ~/.bashrc

sudo apt install nvidia-cuda-toolkit

nvcc -V
```

![](https://i.imgur.com/uABNpSS.png)

Go to `/usr/local` and run

```bash
stat cuda
```

### Switching CUDA
```bash
sudo rm -rf cuda

sudo ln -s /usr/local/cuda-11.3 /usr/local/cuda
```

## cuDNN
[cuDNN Download](https://developer.nvidia.com/rdp/cudnn-download)

![](https://i.imgur.com/OJeJyPs.png)

```bash
tar Jxvf cudnn-linux-x86_64-8.8.1.3_cuda11-archive.tar.xz

mv cudnn-linux-x86_64-8.4.1.50_cuda11.6-archive cudnn

# Move the decompressed file to the corresponding folder and you're done!
sudo cp cudnn/include/cudnn.h /usr/local/cuda-11.7/include
sudo cp cudnn/lib/libcudnn* /usr/local/cuda-11.7/lib64
sudo chmod a+r /usr/local/cuda-11.7/include/cudnn.h 
sudo chmod a+r /usr/local/cuda-11.7/lib64/libcudnn*
```

```bash
sudo apt-get install nvidia-modprobe
```

## pytorch
[Download Start Locally](https://pytorch.org/get-started/locally/)

![](https://i.imgur.com/joNzuZR.png)

```bash
import torch

torch.__version__
torch.version.cuda
torch.backends.cudnn.version()
torch.cuda.is_available()
torch.cuda.device_count()
torch.cuda.get_device_name(0)
```
```python
>>> import torch
>>> torch.__version__
'1.13.1+cu117'
>>> torch.version.cuda
'11.7'
>>> torch.backends.cudnn.version()
8500
>>> torch.cuda.is_available()
True
>>> torch.cuda.device_count()
2
>>> torch.cuda.get_device_name(0)
'NVIDIA GeForce RTX 2080 Ti'
```

## Tensorflow
```bash
pip install tensorflow
```

```python
import tensorflow as tf

print(tf.test.is_gpu_available())
```

## pyenv
```bash
sudo apt-get update -y

sudo apt-get install -y gcc make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev

git clone --depth 1 https://github.com/pyenv/pyenv.git ~/.pyenv

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bashrc

source ~/.bashrc

pyenv install -l

pyenv install 3.7.8

pyenv versions

# change version
pyenv global 3.7.8

# ~/.pyenv/versions/3.7.8/bin/python
```

### virtualenv
```bash
pip install virtualenv

which python3

# --python (It is possible to specify the version to be installed in the virtual environment)
# virtualenv --python=/home/islab/anaconda3/bin/python3 ./test
virtualenv --python=/usr/bin/python3 test_3

# pyenv Use
virtualenv -p ~/.pyenv/versions/3.7.8/bin/python test_378

# Entering/Exiting the environment
cd test/

source bin/activate

deactivate
```

## docker
```bash
sudo apt install docker.io

sudo adduser <USERNAME> sudo
sudo adduser <USERNAME> docker
cat /etc/group | grep <USERNAME>
```

```bash
sudo docker run -it exp_18 /bin/bash

Ctrl + P + Q  # Do not stop and exit

sudo docker start ID # Start-up container

sudo docker inspect ID	# View metadata of mirror image

sudo docker exec -it ID /bin/bash  # Enter the currently running container

sudo docker run -it -v /home/jyang/docker_volume:/home exp18_inject /bin/bash

sudo docker commit ad735fea36bd exp_18

sudo docker save -o docker_exp_18.tar exp_18

sudo chown jyang:jyang docker_exp18_inject.tar

sudo docker load -i docker_exp_18.tar
```