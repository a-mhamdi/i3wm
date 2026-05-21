# dotfiles - i3wm setup

A minimal, keyboard-driven desktop environment on Ubuntu 24, built around i3wm with a Dracula color scheme.
 
## Components
 
| Tool | Role |
|------|------|
| [i3wm](https://i3wm.org/) | Tiling window manager |
| [picom](https://github.com/yshui/picom) | Compositor (transparency & shadows) |
| [polybar](https://github.com/polybar/polybar) | Status bar |
| [rofi](https://github.com/davatorium/rofi) | App launcher & window switcher |
| [sxhkd](https://github.com/baskerville/sxhkd) | Hotkey daemon |
 
## Structure
 
```
~/.config/
├── i3/
│   └── config
├── picom/
│   └── picom.conf
├── polybar/
│   ├── config.ini
│   └── launch.sh
├── rofi/
│   └── config.rasi
└── sxhkd/
    └── sxhkdrc
```
 
## Dependencies
 
```bash
sudo apt install i3 picom polybar rofi sxhkd \
  fonts-firacode fonts-noto-color-emoji
```
 
For Nerd Font icons in polybar, install FiraCode Nerd Font manually:
 
```bash
mkdir -p ~/.local/share/fonts && cd ~/.local/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.zip
unzip FiraCode.zip && fc-cache -fv
```
 
## Polybar
 
Polybar is launched via `launch.sh`, called from i3 config:
 
```
exec_always --no-startup-id ~/.config/polybar/launch.sh
```
 
The script kills any existing instance before relaunching, and supports multi-monitor setups via `xrandr`.
