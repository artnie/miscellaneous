# Custom Emacs Config

This custom config is not mandatory to work with Emacs and CRAM, but it helps a lot.

* If not yet done, install roslisp_repl with `sudo apt install ros-noetic-roslisp-repl`
* Find slime_ros with `roscd slime_ros`
* Use your favourite text-editor to open `slime-config.el` with sudo rights, like `sudo vim slime-config.el`
* Add a `load-file` command before the last line, so the last lines look like this:
```
(load-file "/home/tura/local/miscellaneous/emacs_setup/cram-custom.el")
(provide 'slime-config)
```
* Make sure to give the full path to the file you want to add.
* Launch Emacs with `roslisp_repl &`
* If Emacs says that the `yasnippet` package is missing, install it with `M-x package-install RET yasnippet RET`, close Emacs and launch it again.

## cram-custom

This is the standard config for working with CRAM, proposed by it's developers [here](http://cram-system.org/doc/emacs-config).

## tura-custom

This adds cosmetics like nicer scrolling, the Source-Code-Pro font, a solarized theme and it removes the menu-bar for more space. Before using it, install the font and theme.

* Install the Source-Code-Pro font via shell script:
```
bash install_font_adobe_source_code_pro.sh
```
* Install the theme in Emacs with `M-x package-install RET solarized-theme RET`
* Add the config file to the slime-config, such that the last lines look like this:
```
(load-file "/home/tura/local/miscellaneous/emacs_setup/cram-custom.el")
(load-file "/home/tura/local/miscellaneous/emacs_setup/tura-custom.el")
(provide 'slime-config)
```
* Launch Emacs with `roslisp_repl &`

Additionally, if want to use [Emacs to write LaTeX](http://agent18.github.io/setting-up-latex.html) you can uncomment the last lines in `tura-custom.el` to enable a short `make` command.