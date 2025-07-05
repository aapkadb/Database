Step 1: Update System Packages
sudo apt update && sudo apt upgrade

Step 2: Install PostgreSQL
sudo apt install postgresql -y postgresql-contrib

Step 3: Verify PostgreSQL Installation
sudo service postgresql status
sudo systemctl status postgresql

(Note: In case the PostgreSQL service is not running,
it means that it is disabled. To start it normally,
you first need to enable it and then start it.
To enable the PostgreSQL service, run this command)

sudo systemctl enable postgresql.service
sudo systemctl start postgresql.service

Step 1: Log in to PostgreSQL
sudo -i -u postgres

Step 2: Access PostgreSQL Terminal
psql

To Skip Step 1 and Step 2
sudo -u postgres psql

Step 3: Set PostgreSQL Password
\password postgres

Step 4: Logout of PostgreSql
\q
exit

To check the connection information
\conninfo

List Down All Databases
\l

Uninstall PostgreSQL from Ubuntu 24.04
sudo apt-get --purge remove postgresql postgresql-*