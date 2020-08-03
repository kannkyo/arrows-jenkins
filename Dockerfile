FROM jenkins/jenkins:2.60.3

COPY plugins /tmp/plugins
RUN /tmp/plugins/create-plugins-list.sh
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

USER jenkins
