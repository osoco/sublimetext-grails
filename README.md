# Grails Sublime Text 2 Package

The **Grails Sublime Text 2 Package** provides a set of code completion, syntax highlighter and tools to work with [Grails].


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

- Code completions based on Grails file type (Controllers, Services, and Domain classes for now)

- Toogle comments in Groovy code and use GSP comments (%{-- --}%) in GSPs

- GSP syntax highlighter (based on the TextMate bundle https://github.com/textmate/groovy-grails.tmbundle, with a few fixes)


## TODO

- Code completion within GSP files

- Run Grails commands from the Sublime console (if possible)

- Navegation between classes and their tests (through context menu maybe)

- Code completions for TagLibs, Tests, and Jobs

- Improve code completions when multiple parameter lists are possible


## Credits

Arturo Herrero - [@ArturoHerrero](https://twitter.com/ArturoHerrero)
Geli Crick - [@g_crick](https://twitter.com/g_crick)

Thanks to [Osoco] for providing us with time to work on this project!

## License



[Grails]: http://grails.org/
[Sublime Package Control]: http://wbond.net/sublime_packages/package_control
[Osoco]: http://osoco.es