# Grails Sublime Text Package

The **Grails Sublime Text Package** provides code completion, syntax highlighting and other tools to work with [Grails].


## Installation

[Sublime Package Control] is the recommended way to install this package. After installing package control, open the command palette (Tools -> Command Palette), start typing 'install' and use the arrow keys to select 'Package Control: Install Package' and hit enter. In a few seconds, a list of available packages will appear within the same menu. Start typing 'Grails', and once again use the arrow keys to select the Grails package. There should be no need to restart Sublime Text. 

If you prefer to install without package control, use the standard method for installing Sublime Text packages. Make sure to get the source code from the latest tag, because master may become unstable at any time.


## Features

- Code completions for Grails file types, with automatic file type detection (Controllers, Services, and Domain classes for now)

- Enable comment toggling in Groovy code and use GSP comments (%{-- --}%) in GSPs

- GSP syntax highlighting

- Grails documentation ([GDoc]) syntax highlighting and snippets

(Note: your color scheme might need to be adjusted to recognize the syntax highlighting changes)


## TODO

- Code completion within GSP files

- Run Grails commands from the Sublime console (if possible)

- Navegation between classes and their tests (through context menu maybe)

- Code completions for TagLibs, Tests, and Jobs

- Improve code completions when multiple parameter lists are possible


## Participate!

Help us improve this plugin by reporting errors in the [issue tracker]. That's also the best way to ask questions or
give us suggestions. If you modify the plugin, we'd love to get a pull request so we can share the improvements with everyone.

## Credits

Arturo Herrero - [@ArturoHerrero](https://twitter.com/ArturoHerrero)  
Geli Crick - [@g_crick](https://twitter.com/g_crick)

Thanks to [OSOCO] for providing us with time to work on this project!



[Grails]: http://grails.org/
[GDoc]: http://grails.org/doc/latest/guide/single.html#docengine
[Sublime Package Control]: https://sublime.wbond.net/
[OSOCO]: http://osoco.es
[issue tracker]: https://github.com/osoco/sublimetext-grails/issues
