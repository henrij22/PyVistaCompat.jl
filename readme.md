# PyVistaCompat.jl

This Package provides a simple interface with the Python package [PyVista](https://www.pyvista.org/). 
It instantiates a `pyvista` object as a safe constant in global namespace and a few convinience functions for getting and setting data on a Pyvista Polydata object

## Instalation
In the Julia REPL hit `]` to enter the Pkg mode. Than
```julia-repl
(v1.7) pkg> add https://github.com/henrij22/PyVistaCompat.jl
```
I've not yet registred the package, as I don't know if this is usefull to others. I made this package more to modularise a package I'm developing.

## Usage
You can use the `pyvista` object as you would use it in Python. 
