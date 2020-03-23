FROM centos:8
RUN dnf install python3-pip -y
RUN yum install curl unzip -y 
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install
RUN aws --version
RUN curl "https://download-ib01.fedoraproject.org/pub/epel/8/Everything/x86_64/Packages/s/sshpass-1.06-9.el8.x86_64.rpm" -o "sshpass-1.06-9.el8.x86_64.rpm"
RUN rpm -i sshpass-1.06-9.el8.x86_64.rpm
RUN yum install -y which
RUN ldd $(which sshpass)
