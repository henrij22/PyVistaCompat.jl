
using PyVistaCompat

using Test


@testset "Load VTK" begin
    grid = pyvista.PolyData("grid.vtk")

    @test grid.n_points == 33
    @test grid.n_cells == 20

    pointData = rand(Float64, 33)
    cellData = rand(Float64, 20)

    addPointData(grid, pointData, "random")
    addCellData(grid, cellData, "random")

    grid.save("grid_.vtk")
    @test isfile("grid_.vtk")

    grid_ = pyvista.PolyData("grid_.vtk")
    @test getPointData(grid_, "random") == pointData
    @test getCellData(grid_, "random") == cellData

end