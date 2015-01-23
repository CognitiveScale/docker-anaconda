# docker-anaconda-
docker image of ubuntu 14.04 based on ansible-docker official + anaconda with a patch for mathplotlib.pyplot

0. Host provided on target cloud 10.x.y.z
1. For adminstrators, get pubkey into ubuntu account authorized_keys on host (indy)
2. Download and install anaconda python package management (comes with sci-py stack)
3. Create user accounts for those who need access.
4. For one or two users, start a single kernel and share the port/access with them
5. If there are lots of users, for auditing sake, for each user, start an ipython notebook on their own port 
with supervisord as that user 
# ipython notebook --no-browser --port port --logfile user_log_file --ip 172.25.0.12 --hb heartbeat_port
172.25.0.12 is eth0 from ifconfig on ipython host
5. email login info to users. They can login at 10.113.238:port