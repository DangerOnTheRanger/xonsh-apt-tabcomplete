from setuptools import setup

setup(
    name="xonsh-apt-tabcomplete",
    version="0.1.2",
    license="BSD",
    url="https://github.com/DangerOnTheRanger/xonsh-apt-tabcomplete",
    download_url="https://github.com/DangerOnTheRanger/xonsh-apt-tabcomplete/tarball/v0.1.2",
    description="APT tabcomplete support for the Xonsh shell",
    author="Kermit Alexander II",
    author_email="tuxfreak@tuxfamily.org",
    packages=['xontrib'],
    package_dir={'xontrib': 'xontrib'},
    package_data={'xontrib': ['*.xsh']},
    zip_safe=False,
    classifiers=[
        "Development Status :: 2 - Pre-Alpha",
        "Environment :: Console",
        "Environment :: Plugins",
        "Intended Audience :: End Users/Desktop",
        "License :: OSI Approved :: BSD License",
        "Operating System :: POSIX",
        "Programming Language :: Python"
    ]
)
