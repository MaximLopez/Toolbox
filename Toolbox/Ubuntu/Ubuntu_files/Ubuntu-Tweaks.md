# Ubuntu 
## Tweaks
### GNOME
#### GNOME Tweaks
```markdown
sudo apt install gnome-tweaks
```
#### Extensions for GNOME
```markdown
sudo apt install gnome-shell-extensions
```
### Dock
#### Minimise on click
```markdown
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
```
#### Trashbin in the dock
##### On 
```markdown
gsettings set org.gnome.shell.extensions.dash-to-dock show-trash true
```
##### Off
```markdown
gsettings set org.gnome.shell.extensions.desktop-icons show-trash false
```