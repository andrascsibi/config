# config

Some of my config files

## Symlinks 

    cd <this repo>
    ln -nfs $PWD/hammerspoon ~/.hammerspoon

    mv ~/.config/karabiner ~/.config/karabiner.bak
    ln -nfs $PWD/karabiner ~/.config/

    cd
    touch .profile
    ln -nfs <PATH_TO_CONFIG>/.bash_profile .
    ln -nfs <PATH_TO_CONFIG>/.bash_aliases .
    ln -nfs .bash_profile .zprofile
    
