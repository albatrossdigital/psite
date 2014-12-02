psite
-----

Helpful drush scripts to quickly install sites, set up aliases, and sync
site databases and files with Pantheon and Acquia.

### Installation
Execute `install.sh`:
```
git@github.com:albatrossdigital/psite.git
cd psite
sudo bash install.sh
```
Optionally install [Pantheon Terminus](https://github.com/pantheon-systems/terminus), 
set system variables, and make apache run as your user (see bottom).

### Using

##### psite-install
Install a new site in Drupal, create a Drush alias, add an apache vhosts entry.
```
psite-install --name site --path ~/workspace/drupal --user root -pass pass --profile standard
```
Download codebase from repo and install site
```
psite-install --name flight --repo git@github.com:albatrossdigital/flight-drops-7.git --profile flight
```

##### Sync with Pantheon or Acquia site
```
psite-sync self pantheonname live
```

##### Quickly use drush on Pantheon site
```
pdrush drush_command
```

##### See most recent errors
```
tail /var/log/apache2/sitename.local/error.log -n100
```

##### Helpful Pantheon [Terminus](https://github.com/pantheon-systems/terminus) commands
```
# Authenticate.
drush pauth $PANTHEON_USER --password=$PANTHEON_pass

# Update your aliases.
drush paliases

# Deploy code to test env
drush psite-deploy $SITE_UUID test

# Deploy content to test environment.
drush psite-clone $SITE_UUID dev test
```

### Setting system variables
To save time, you can set the mysql user and password to use for everytime
`psite-install` is run (unless --user and --pass are manually set):
```
echo "MYSQL_USER=root;export MYSQL_USER" >> ~/.bash_profile
echo "MYSQL_PASS=pass;export MYSQL_PASS" >> ~/.bash_profile
echo "PANTHEON_USER=name@email.com;export PANTHEON_USER" >> ~/.bash_profile
echo "PANTHEON_PASS=pass;export PANTHEON_PASS" >> ~/.bash_profile
source ~/.bash_profile
```

### Make apache run as your user
Edit
```
sudo gedit /etc/apache2/envvars
```
Change to your linux username:
```
export APACHE_RUN_USER=www-data
```


