#!/bin/bash
# Note: this should be run as sudo

drush dl drush_sql_sync_pipe --destination=$HOME/.drush

cp pdrush /usr/bin/pdrush
cp psite-install /usr/bin/psite-install
cp psite-sync /usr/bin/psite-alias
chmod +x /usr/bin/pdrush /usr/bin/psite-install /usr/bin/psite-alias

