FROM mariadb:10
MAINTAINER Andriu

ADD create.sql /create.sql
ADD run_scripts.sh /run_scripts.sh
  
# Define commonly used JAVA_HOME variable
ENV MYSQL_ROOT_PASSWORD sius_es
ENV MYSQL_USER sius
ENV MYSQL_PASSWORD sius_es
ENV MYSQL_DATABASE events_users

EXPOSE 3306

CMD bash -C '/run_scripts.sh';'bash'

