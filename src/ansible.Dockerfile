FROM ubuntu
RUN apt update
RUN apt install software-properties-common -y
RUN add-apt-repository --yes --update ppa:ansible/ansible
RUN apt install ansible -y
#RUN apt install python -y

#RUN apt install nano -y
#RUN sudo nano /etc/ansible/hosts

#COPY hosts /etc/ansible/hosts

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]