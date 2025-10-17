# SDDM Config

## Dependencies

### Themes
- [SDDM Astronaut Theme](https://github.com/Keyitdev/sddm-astronaut-theme)

### Fonts
- In SDDM theme. Don't find these here.

### Qt & KDE things

- sddm  
- qt6-qtsvg  
- qt6-qtvirtualkeyboard  
- qt6-qtmultimedia  

> All of them are Fedora packages. Use `dnf`.  
> Maybe all are installed  
> Access [SDDM Astronaut Theme](https://github.com/Keyitdev/sddm-astronaut-theme) to know these in other distro

### Backgrounds
- [Here](../SDDM/sddm-astronaut-theme/Backgrounds/maple-pool-stork.gif)

### Customize
- [My custom here](../SDDM/sddm-astronaut-theme/Themes/zen.conf)

## Setup

### Install Dependencies & Theme

- Clone [SDDM Astronaut Theme](https://github.com/Keyitdev/sddm-astronaut-theme) into `/usr/share/sddm/themes/`  
`sudo git clone -b master --depth 1 https://github.com/keyitdev/sddm-astronaut-theme.git /usr/share/sddm/themes/sddm-astronaut-theme`  

- Install fonts  
```
sudo mkdir /usr/share/fonts/sddm-astronaut-theme/
sudo cp -r /usr/share/sddm/themes/sddm-astronaut-theme/Fonts/* /usr/share/fonts/sddm-astronaut-theme
```

- Copy customize into theme  
```
sudo cp -r ${DOTFILES}/SDDM/sddm-astronaut-theme/Backgrounds/maple-pool-stork.gif /usr/share/sddm/themes/sddm-astronaut-theme/Backgrounds/
sudo cp -r ${DOTFILES}/SDDM/sddm-astronaut-theme/Themes/zen.conf /usr/share/sddm/themes/sddm-astronaut-theme/Themes/
```

### Select and complete setup

- Select theme by edit `/etc/sddm.conf`. Use your editor and add this or change with this content  
```
[Theme]
Current=sddm-astronaut-theme
```
- Select theme for SDDM Astronaut Theme by edit `/usr/share/sddm/themes/sddm-astronaut-theme/metadata.desktop` with your editor. Change content:
```
ConfigFile=Themes/zen.conf
```
