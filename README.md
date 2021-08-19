This test will need your help to set up app server and DB server. 

Please find below the server details:

APP server
==========

Public IP : 34.101.219.16 <br />
Private IP : 10.31.0.3 <br />
Username : user <br />
(used your own ssh-key) <br />

DB server
=========

Private IP : 10.31.0.4 <br />
Username : user <br />
(used your own ssh-key) <br />

To upload your key to the server, change the ssh key on /pubkey/id.pub (on this repo) by your own key. Once it's modify, push it and just let the github-actions take care of it. after the jobs finished and then your can continue to ssh to the app server.

1. Please install web server on APP server, the application running with the php.
2. pull the source code and database from the below reposiroty. <br />
https://github.com/lalwanivikas/php-mysql-chart-demo <br />
2. Please install mysql on the DB server and import the database.