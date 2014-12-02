#!/bin/bash
# Note: this should be run as sudo

drush dl drush_sql_sync_pipe --destination=$HOME/.drush

cp -f pdrush psite-install psite-sync /usr/bin
chmod +x /usr/bin/pdrush /usr/bin/psite-install /usr/bin/psite-sync

mv -f ~/.drush/local.aliases.drushrc.php ~/.drush/local_BACK.aliases.drushrc.php
echo "<?php" > ~/.drush/local.aliases.drushrc.php
