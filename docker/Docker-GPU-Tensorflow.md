# Ubuntu + Tensorflow using Docker + GPU support


## Step 1: Create the instance 

Note the steps will work for AWS / GCP instance which have GPU support

On AWS 

- Make sure the instance has enough storage on the root volume  eg 16GB (in case you need to resize the node on AWS refer to https://stackoverflow.com/questions/11014584/ec2-cant-resize-volume-after-increasing-size )
- The security group of the instance needs to allow for the 8888 port (ie under Inbound rules)

## Step 2: Install resouces
Script below is used to install CUDA, Docker and nvidia-docker
This script can be setup as start up script/ User data in AWS

```
wget -O - -q 'https://gist.githubusercontent.com/dte/8954e405590a360614dcc6acdb7baa74/raw/d1b5a01ed0b9252654016d2a9a435dc8b4c045e7/install-CUDA-docker-nvidia-docker.sh' | sudo bash
```

Once the script is installed restart the machine 

```
sudo restart -r now

```


## Step 3: Run Tensorflow Docker image with GPU support

refer to https://github.com/tensorflow/tensorflow/tree/master/tensorflow/tools/docker for details 

```
sudo nvidia-docker run --rm --name tf-notebook -p 8888:8888 -p 6006:6006 gcr.io/tensorflow/tensorflow:latest-gpu jupyter notebook --allow-root  
```
