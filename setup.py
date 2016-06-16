from setuptools import setup

setup(
    name="xonsh-apt-tabcomplete",
    version="0.1",
    license="BSD",
    packages=['xontrib'],
    package_dir={'xontrib': 'xontrib'},
    package_data={'xontrib': ['*.xsh']},
    zip_safe=False
)
