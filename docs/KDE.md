# KDE Installation

## Dependencies

### Fonts

- [Open Sans](https://fonts.google.com/specimen/Open+Sans)  
`sudo dnf install open-sans-fonts`
- [Fira Code](https://github.com/tonsky/FiraCode) (or [Patched](https://www.nerdfonts.com/font-downloads))  
`sudo dnf install fira-code-fonts`
- [Symbols](https://www.nerdfonts.com/font-downloads) (optional)

### Widgets

- [Panel Colorizer](https://github.com/luisbocanegra/plasma-panel-colorizer)
- [Shutdown Or Switch](https://github.com/Davide-sd/shutdown_or_switch)
- [Kara](https://github.com/dhruv8sh/kara)
> Most widgets are built-in to Plasma

### Applications

- [Kitty](https://sw.kovidgoyal.net/kitty/)  
`sudo dnf install kitty`
- [Firefox](https://www.firefox.com/)  
`sudo dnf install firefox`
> Firefox is already installed in KDE Edition.

### Kwin Scripts

- [Karousel](https://github.com/peterfajdiga/karousel)

## Setup

### Themes

>[!WARNING]
>I use ***default*** Fedora KDE Edition themes. If I use other themes, i will update later.

### Bars

- Minimum the bottom bar  
- Create top bar  
- Put widgets below to the top bar:

```
Panel Colorizer
Lock/Log Out
Kara
Flexable Panel Spacer
Digital Clock
Flexable Panel Spacer
default System Trays
```

- Config widgets at [here](KDE-widgets.md)  
- Config top bar:

```
Fill width
Windows go below

Height: 30
```

- Config bottom bar:
> Add Panel Colorizer widgets with same color, but shapes > Radius is {10;10;10;10}

```
Dodge Windows

Height: 44
```

### Import keyboard Shortcuts

>[!IMPORTANT]
>***OUTDATED***. Now, it in [.config](../.config/kglobalshortcutsrc)

File: [KDE Shortcuts][../Miscellaneous/KDE/kde_shorcut.kksrc]

- Just open settings and import it  
- Or use CLI, idk

### Kwin Scripts
Just install [Karousel](https://github.com/peterfajdiga/karousel) and Done.  
Still reading, huh?  
***Nothing here*** bro🥀🥀🥀
