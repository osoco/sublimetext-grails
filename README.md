# Grails Sublime Text 2 Package

The **Grails Sublime Text 2 Package** provides code completion, syntax highlighting and other tools to work with [Grails].


## Installation

There are two main ways to install the *Grails Sublime Text 2 Package*:

1. Via the [Sublime Package Control]. 

2. Placing a Grails directory containing this resource under Packages.

    Linux:

        git clone git://github.com/osoco/sublimetext-grails.git ~/.config/sublime-text-2/Packages/Grails

    OS X:

        git clone git://github.com/osoco/sublimetext-grails.git ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/Grails

    Windows:

        git clone git://github.com/osoco/sublimetext-grails.git "%APPDATA%\Sublime Text 2\Packages\Grails"


## Features

- Code completions for Grails file types, with automatic file type detection (Controllers, Services, and Domain classes for now)

- Enable comment toggling in Groovy code and use GSP comments (%{-- --}%) in GSPs

- GSP syntax highlighter (based on the TextMate bundle https://github.com/textmate/groovy-grails.tmbundle, with a few fixes)

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
[Sublime Package Control]: http://wbond.net/sublime_packages/package_control
[OSOCO]: http://osoco.es
[issue tracker]: https://github.com/osoco/sublimetext-grails/issues