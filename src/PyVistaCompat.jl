__precompile__() # this module is safe to precompile

module PyVistaCompat
using PyCall

const pyvista  = PyNULL()

function __init__()
    copy!(pyvista, pyimport_conda("pyvista", "pyvista"))

    py"""
    def addPointData(grid, d, name):
        grid.point_data[name] = d
    """
    py"""
    def addCellData(grid, d, name):
        grid.cell_data[name] = d
    """

    py"""
    def getPointData(grid, name):
        return grid.point_data[name]
    """

    py"""
    def getCellData(grid, name):
        return grid.cell_data[name]
    """
end



addPointData(grid::PyObject, d, name::AbstractString) = py"addPointData"(grid, d, name)
addCellData(grid::PyObject, d, name::AbstractString) = py"addCellData"(grid, d, name)

getPointData(grid::PyObject, name::AbstractString) = py"getPointData"(grid, name)
getCellData(grid::PyObject, name::AbstractString) = py"getCellData"(grid, name)


export pyvista, addPointData, addCellData, getPointData, getCellData

end # module



