import cherrypy

class FirstPage(object):
    def index(self):
        return "This is a test"

cherrypy.quickstart(FirstPage())
