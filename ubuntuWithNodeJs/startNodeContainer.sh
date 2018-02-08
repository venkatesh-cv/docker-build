docker run -it --network overlay --name node -v /home/venkatesh/work/learning/NodeJs/Challenge3:/usr/nodeapp -p 80:3000 -p 8080:8080 -w=/usr/nodeapp cvenkatesh/ubuntu-nodejs npm start
