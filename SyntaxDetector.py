import sublime, sublime_plugin
import os, string, re


class GrailsSyntaxCommand(sublime_plugin.EventListener):
    """ Attempts to set Grails Syntax when appropriate. """


    def __init__(self):
        super(GrailsSyntaxCommand, self).__init__()
        self.path = None
        self.name = None
        self.ext  = None
        self.view = None


    def on_load(self, view):
        self.check_syntax(view)


    def on_post_save(self, view):
        self.check_syntax(view)


    def check_syntax(self, view):
        self.view      = view
        self.file_name = view.file_name()

        if not self.file_name: # buffer has never been saved
            return

        self.set_file_variables()

        if self.ext == '.gdoc':
            self.set_syntax('Textile', 'Textile')
            return

        if not self.ext == '.groovy':
            return

        if self.is_domain():
            self.set_syntax('GrailsDomain', 'Grails/Domain')
        elif self.is_controller():
            self.set_syntax('GrailsController', 'Grails/Controller')
        elif self.is_service():
            self.set_syntax('GrailsService', 'Grails/Service')
        else:
            self.set_syntax('Groovy', 'Groovy')


    def is_domain(self):
        return self.is_in_grails_subfolder('domain', self.path)

    def is_controller(self):
        return self.is_in_grails_subfolder('controllers', self.path)

    def is_service(self):
        return self.is_in_grails_subfolder('services', self.path)


    def set_file_variables(self):
        self.path = os.path.dirname(self.file_name)
        self.name = os.path.basename(self.file_name).lower()
        self.name, self.ext = os.path.splitext(self.name)


    def set_syntax(self, syntax, path):
        new_syntax = 'Packages/' + path + '/' + syntax + '.tmLanguage'
        self.view.set_syntax_file(new_syntax)



    def is_in_grails_subfolder(self, subfolder, file):
        head, tail = os.path.split(file)
        if tail == subfolder:
            return self.is_in_grails_app(head)
        elif head and tail:
            return self.is_in_grails_subfolder(subfolder, head)
        else:
            return False

    def is_in_grails_app(self, file):
        head, tail = os.path.split(file)
        if tail == 'grails-app':
            return True
        else:
            return False

