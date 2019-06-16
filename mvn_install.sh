nstall git -y
git clone https://github.com/opstree/spring3hibernate
cd ~/spring3hibernate;mvn install
cp -p ~/.m2/repository/Spring3HibernateApp/Spring3HibernateApp/1.8-SNAPSHOT/Spring3HibernateApp-1.8-SNAPSHOT.war ~/apache-tomcat-8.5.42/webapps/
cd ~/apache-tomcat-8.5.42/bin;./shutdown.sh;./startup.sh;ps -ef|grep -i tomcat
curl http://192.168.100.102:8080/Spring3HibernateApp-1.8-SNAPSHOT/ > /tmp/output
grep -i "CRUD" /tmp/output
if [ -f ~/apache-tomcat-8.5.42/webapps/Spring3HibernateApp-1.8-SNAPSHOT.war ];
then
echo "\"Insall successfully done"\"
else
echo "\"Error"\"
fi
