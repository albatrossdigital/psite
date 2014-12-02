pdrush
------

Adds a shortcut for `drush --strict=0` so that sites with Pantheon can be 
used in with Drush 6 (which includes D8 support).

### Installation
Execute `install.sh`:
```
git@github.com:albatrossdigital/pdrush.git
cd pdrush
bash install.sh
```

#### Manual installation
Ensure that this code has been uncommented or added to `~/.bashrc`
```
# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
```

Add this bash function to `~/.bash_aliases`
```
function pdrush() { drush --strict=0 "$@" ;}
```



if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
