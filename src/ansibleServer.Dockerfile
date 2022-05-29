FROM ubuntu
RUN apt update
RUN apt install software-properties-common -y
RUN add-apt-repository --yes --update ppa:ansible/ansible
RUN apt install ansible -y

ADD hosts /etc/ansible/hosts

WORKDIR /home
COPY ./ansible ./

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]