
#!/bin/bash

  #DB_USER='root'
  #DB_PASS='crasher1'
  #DB='mysql'

  #BZ_USER='bugs'
  #BZ_PASS='1punjab2'

  echo 'logging into db $DB as $DB_USER'nw
  cd /var/www/html/
  mysql -u "root" --password='crasher1' -e "GRANT ALL PRIVILEGES ON bugs.* TO bugs@localhost IDENTIFIED BY '$db_pass'"
  mysql -u "root" --password="crasher1" -D "mysql" -e "UPDATE user SET Password=PASSWORD('biteme') WHERE User='bugs';FLUSH PRIVILEGES;"
