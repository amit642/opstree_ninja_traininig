#!/bin/bash
#yum install git -y
#git clone https://github.com/opstree/spring3hibernate
#cd ~/devops-ninja/spring3hibernate;mvn install
cp -p ~/.m2/repository/Spring3HibernateApp/Spring3HibernateApp/1.8-SNAPSHOT/Spring3HibernateApp-1.8-SNAPSHOT.war ~/devops-ninja/apache-tomcat-8.5.42/webapps/
cd ~/devops-ninja/apache-tomcat-8.5.42/bin;./shutdown.sh;./startup.sh;ps -ef|grep -i tomcat
curl http://192.168.100.102:8080/Spring3HibernateApp-1.8-SNAPSHOT/ > /tmp/output
grep -i "CRUD" /tmp/output
if [ -f ~/devops-ninja/apache-tomcat-8.5.42/webapps/Spring3HibernateApp-1.8-SNAPSHOT.war ];
then
	echo "\"Insall successfully done"\"
	echo "Push to Repo"
	cd ~/devops-ninja/opstree_ninja_traininig
	git add tazim_mvn_install.sh
	git commit -m "Push Maven script to Repo"
	git pull origin master
	git push origin master	
else
	echo "\"Error"\"
fi
