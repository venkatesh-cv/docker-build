IMAGE=$(sudo docker build -t myapp . |tail -l |awk '{ print $NF }')
IMAGE=$(sudo docker images myapp -q)
MNT="/var/jenkins_home/jobs/${JOB_NAME}"
#ls -l $MNT
#ls -l $MNT/workspace
CONTAINER=$(sudo docker run -d -v $MNT:/opt/project -w /opt/project/workspace $IMAGE /bin/bash -c 'cd /opt/project/workspace;rake spec --trace')
sudo docker attach $CONTAINER
RC=$(sudo docker wait $CONTAINER)
sudo docker rm $CONTAINER
exit $RC
