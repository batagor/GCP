This test will need your help to set up app server and DB server. 

Please find below the server details:

APP server
==========

34.101.219.16 <br />
10.31.0.3 <br />
user <br />
(used your own ssh-key) <br />

DB server
=========

10.31.0.3 <br />
user <br />
(used your own ssh-key) <br />

To upload your key to the server, put your ssh key to /pubkey/id.pub. Once it's modify, push it to the master and just let the github-actions take care of it. after the jobs finished and then your can continue to ssh to the app server.

1. Please install web server on APP server and pull the below code of the app.
2. Please install mysql on the DB server.