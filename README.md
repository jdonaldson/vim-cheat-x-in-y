# Vim-cheat-x-in-y

![screenshot](http://i.imgur.com/1ZAin3j.png)

This plugin lets you quickly open up a cheat sheet for a given language in a
vertical split on the right.  Specifically, they are the guides from
[learnXinYminutes][], in
addition to a few other minor guides (markdown).



# Installation
The recommended way to install vim-cheat-x-in-y is using a bundle management system such
as [vim-plug][], [pathogen][], [vundle][], or [vam][]. Check the respective
readmes for specific installation instructions.

The author endorses vim-plug for this project, since it automatically resolves
the submodule dependency for learnXinY. 

Add this to your vimrc or bundle list, and source it:
```viml
Plug 'jdonaldson/vim-cheat-x-in-y'
```

run : 
```viml
:PlugInstall
```


# Usage
The plugin adds a single command:  ```:ToggleCheat```.  This will open or close
a vertical split containing the read-only markdown cheat file for the current
file type.

If a cheat file is not available, a message will be displayed.

# Credit
[learnXinYminutes][], for most
of the guides, and for which this plugin is named.

[learnXinYminutes]:https://github.com/adambard/learnxinyminutes-docs
[vim-plug]:https://github.com/junegunn/vim-plug
[pathogen]:https://github.com/tpope/vim-pathogen
[vundle]:https://github.com/gmarik/vundle
[vam]:https://github.com/MarcWeber/vim-addon-manager
