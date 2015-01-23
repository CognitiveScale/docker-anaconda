FROM ansible/ubuntu14.04-ansible:stable
# Add playbooks to the Docker image
ADD ansible /srv/anaconda/
WORKDIR /srv/anaconda
# Run Ansible to configure the Docker image
#RUN ansible-playbook hosts site.yml -c local

# RUN apt-get -y autoremove && \
#     apt-get autoclean && \
#     rm -rf /var/cache/apt/* /var/lib/apt/lists/* /tmp/* /var/tmp/*# Other Dockerfile directives are still valid

EXPOSE 22 3000 80 7777 7776
ENTRYPOINT ["/usr/bin/supervisord", "-DFOREGROUND"]


