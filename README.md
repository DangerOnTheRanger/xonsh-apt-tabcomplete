xonsh-apt-tabcomplete - APT tab completion for the Xonsh shell
==============================================================

Installing
==========

Installation is done the normal way for setuptools-based projects:

	python setup.py install

You can also use pip, of course:

    	pip install xonsh-apt-tabcomplete

Note that in the specific case of Xonsh, make sure you use your Python 3
executable to run setup.py, since as of this writing that's all Xonsh supports.

Next, you'll have to add a line to your .xonshrc file to load the plugin:

	xontrib load apt_tabcomplete

Reload your shell, and you're good to go.

Usage
=====

Tabcomplete works the way you'd expect when using apt. Just hit tab when
you'd like to see what packages have a name starting with what you've typed so far.
Currently just the install/remove commands for apt-get and the search command for
apt-cache are supported (with apt-get remove only tabcompleting to installed packages),
but I am open to adding more functionality upon request.


Known issues
============

You may have to hit tab twice to get the plugin to autocomplete. I'm still not sure why this is, unfortunately.
