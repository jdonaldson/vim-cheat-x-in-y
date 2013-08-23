# Vim-cheat-x-in-y

![screenshot](http://i.imgur.com/1ZAin3j.png)

This plugin lets you quickly open up a cheat sheet for a given language in a
vertical split on the right.  Specifically, they are the guides from
[learnXinYminutes](https://github.com/adambard/learnxinyminutes-docs), in
addition to a few other minor guides (markdown).



# Installation
The recommended way to install vim-cheat-x-in-y is using a bundle management system such
as [pathogen][], [vundle][], or [vam][].

## Install with Pathogen

1. Install pathogen using the [instructions][pathogen].
2. Create/cd into `~/.vim/bundle/`
3. Make a clone of the vim-cheat-x-in-y repo:
    `git clone https://github.com/jdonaldson/vim-cheat-x-in-y.git`

To update:

1. cd into `~/.vim/bundle/vim-cheat-x-in-y/`
2. git pull

## Install with Vundle

1. Install vundle using the [instructions][vundle]
2. Add vim-cheat-x-in-y to your bundle list in `.vimrc` and re-source it:
    `Bundle 'jdonaldson/vim-cheat-x-in-y'`
3. Run `:BundleInstall`

To update, just run `:BundleUpdate`

## Install with VAM

1. Install VAM using the [instructions][vam]
2. Add vim-cheat-x-in-y to the list of your activated bundles and re-source it:
    `call vam#ActivateAddons(['github:jdonaldson/vim-cheat-x-in-y'])`

[pathogen]:https://github.com/tpope/vim-pathogen

[vundle]:https://github.com/gmarik/vundle

[vam]:https://github.com/MarcWeber/vim-addon-manager

# Usage
The plugin adds a single command:  ```:ToggleCheat```.  This will open or close
a vertical split containing the read-only markdown cheat file for the current 
file type.

If a cheat file is not available, a message will be displayed.

# Credit
[learnXinYminutes](https://github.com/adambard/learnxinyminutes-docs), for most
of the guides, and for which this plugin is named.
