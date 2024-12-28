# Introduction 

This is a repo composing of almost all the dotfiles in my system 

## list of applications 

List of applications I want in my system. Applications which do not need a custom dotfile don't have their dotfiles in this repo 

- nvim
- ranger
- powertop
- kitty
- clipmenu
- clipnotify
- pfetch
- dunst
- i3
- picom
- kitty
- xinitrc
- polybar
- flameshot
- powertop
- auto-cpufreq
- dconf editor
- nitrogen
- nautilus


## The Proper Installation

Fist install stow in your linux system

Clone this repo into your system and make sure that ths file is in your `Home directory`.

Cd into the directory and use the command given below to symlink all the files to your system 

```
cd dotfiles/
stow *
```

Or , if you want to symlink selectively , then cd into the directory and `stow <name of the application 1> <name of the application 2> ...`

for example:
```
cd dotfiles/
stow nvim kitty
```

## The Improper Installation

Just copy the files man..

### Common Error

If the dotfile already exists then it will cause an error , there are two solution 

1. delete the "already existing" file and then do the 'normal procedure'.
2. use adopt flag `stow --adopt nvim kitty`, but this will overright the file that you are trying to symlink in the first place ( read `https://github.com/Aman1337g/dotfiles?tab=readme-ov-file#faqs` FAQ's for more info ) 


