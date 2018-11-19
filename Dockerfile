FROM centos

RUN yum install -y iperf3 && yum clean all

USER 1001
EXPOSE 5001

CMD iperf3 -p 5001 -s
