# PyVistaCompat.jl
[![CI](https://github.com/henrij22/PyVistaCompat.jl/actions/workflows/CI.yml/badge.svg)](https://github.com/henrij22/PyVistaCompat.jl/actions/workflows/CI.yml)

This Package provides a simple interface with the Python package [PyVista](https://www.pyvista.org/). 
It instantiates a `pyvista` object as a safe constant in the global namespace and a few convenience functions for getting and setting data on a Pyvista Polydata object

## Instalation
In the Julia REPL hit `]` to enter the Pkg mode. Then
```julia-repl
 pkg> add https://github.com/henrij22/PyVistaCompat.jl
```
I've not yet registered the package, as I don't know if this is useful to others. I made this package more to modularise a package I'm developing.
You can also add my local registry In Pkg mode
```julia-repl
 pkg> registry add https://github.com/henrij22/JuliaRegistry
 pkg> add PyVistaCompat
```
## Usage
You can use the `pyvista` object as you would use it in Python. 
