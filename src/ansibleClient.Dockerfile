FROM ubuntu
RUN apt update
RUN apt install software-properties-common -y

RUN apt install -y openssh-server -y
RUN mkdir /var/run/sshd

RUN useradd -m -d /home/andrey andrey && echo 'andrey:qwe234' | chpasswd

CMD ["/usr/sbin/sshd", "-D"]