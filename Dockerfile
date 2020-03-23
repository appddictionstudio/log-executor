FROM centos:8
RUN dnf install python3-pip -y
RUN yum install curl unzip -y 
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install
RUN aws --version
RUN yum install -y epel-release
RUN yum install -y sshpass
