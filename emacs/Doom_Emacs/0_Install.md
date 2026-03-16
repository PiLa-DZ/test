```bash
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install

rm ~/.emacs
rm -rf ~/.emacs.d

# 4. Add Doom to your Path
export PATH="$HOME/.config/emacs/bin:$PATH"

doom sync # : Run this every time you modify your init.el or packages.el files.

doom doctor # : Run this if something feels broken; it will tell you exactly what’s missing.

doom upgrade # : Updates Doom and all your installed packages.
```
But before you doom yourself, here are some things you should know:

1. Don't forget to run 'doom sync' and restart Emacs after modifying init.el or
   packages.el in ~/.config/doom. This is never necessary for config.el.

2. If something goes wrong, run `doom doctor` to diagnose common issues with
   your environment, setup, and config.

3. Use 'doom upgrade' to update Doom. Doing it any other way will require
   additional steps (see 'doom help upgrade').

4. Access Doom's documentation from within Emacs via 'SPC h d h' or 'C-h d h'
   (or 'M-x doom/help').

Have fun!

✓ Finished in 1h 6m 37s
