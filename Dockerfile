FROM centos

RUN yum install -y iperf3 && yum clean all

USER 1001
EXPOSE 5001

CMD iperf -c 10.1.1.1 -p 12000 -t 3600 -i 2
