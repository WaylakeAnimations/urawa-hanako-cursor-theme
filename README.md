![preview](https://github.com/user-attachments/assets/55a7c4fa-d7ac-44de-9a6c-51003f4c1db8)

# Urawa Hanako Cursor Theme
A cursor theme with 3D renders of Urawa Hanako from Blue Archive **(now with HyprCursor support :D)**

## Installation
### Linux (xcursor)
1. Clone this repo and open the `xcur` folder
2. Copy or symlink the folder `Urawa Hanako (3D)` into one of these directories
 - `/usr/share/icons/` (system-wide)
 - `~/.local/share/icons/` (user-specific)
3. Open your appearance setting app of your choice, and apply the cursor theme

### Linux (HyprCursor)
1. Clone this repo and open the `hycur` folder
2. Copy or symlink the folder `Urawa Hanako (3D)` into `~/.local/share/icons`
3. Set the theme with env vars or `hyprctl setcursor`

Example `hyprland.conf` snippet
```
env = HYPRCURSOR_THEME,"Urawa Hanako (3D)"
env = HYPRCURSOR_SIZE,24
```

### Windows
_**coming soon**_ (i would consider porting this in the future)

## Honorable Mentions

- [KDE's Custom Cursor Guide](https://develop.kde.org/docs/features/cursor/)
- Alexisvids : Showing me how to properly extract animations from the game files

## License

At some point, i realized having MIT License applied to the **entire** repo (including the renders) might not be suitable...

Just don't claim the theme as your own works and you should be fine...

But the build scripts are licensed with [MIT License](https://opensource.org/license/MIT)...
