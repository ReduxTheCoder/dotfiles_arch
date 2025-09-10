# My_dotfiles
this repo is for my dot files, you can find configs for software i use:
you can delete the files you dont want when installed!

this uses stow, so its more easier to configure them, i also built an installer in the files so the installation process is easier

## How to install:

### Linux
IMPORTANT: This program assumes you installed stow!

```sh
git clone https://github.com/SanGennaTheCoder/my_dotfiles.git
sudo ~/my_dotfiles/installer.sh
```

## When installed

you can just add .dotfiles there
if you dont know how stow works: https://youtu.be/y6XCebnB9gs?si=OFbL5yh4p6z6UNMt


## What does the installer.sh do?
the installer just makes a directory (~/dotfiles) and then moves all the files in this repo to that folder, then it stows it.
