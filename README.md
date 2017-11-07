Experiments to tests native node packages in different systems with docker and travis

# About

These are some experiments to see how well we can test native node packages in different systems - including different versions of linux, windows and macos, using docker.

Also some experiments regarding how to integrate these tests in travis CI. 

In this particular case we are using the library https://github.com/QuantamHD/LucyJS which is a native nodejs package that needs to compile some c/c++. The idea is to help that project but also to build some agnostic tools we can use in similar projects.  

# Using

    $ 