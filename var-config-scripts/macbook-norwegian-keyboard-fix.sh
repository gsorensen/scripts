# Maps the proper key on MacOS style keyboards to 'and maps oe and ae to {} since these are 
# Otherwise not accesible.

xmodmap -e "keycode  49 = apostrophe"
xmodmap -e "keycode 47 = braceleft"
xmodmap -e "keycode 48 = braceright"
