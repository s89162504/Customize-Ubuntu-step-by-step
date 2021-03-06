# Powerline

# Installation

```bash
sudo apt-get install -y powerline
```
# Bash prompt
## ~/.bashrc
```
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh
```
# Tmux status line
## ~/.tmux.conf
```
run-shell "powerline-daemon -q"
source "/usr/share/powerline/bindings/tmux/powerline.conf"
```
# Vim status line
## Install python3-pip
```bash
sudo apt-get install -y python3-pip
```
## Install powerline-status
```bash
sudo pip3 install powerline-status
```
# ~/.vimrc
```
" Set terminal color
set t_Co=256
" status line
set laststatus=2
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
```


# Reference
- [Powerline Documentation](https://powerline.readthedocs.io/en/latest/)
