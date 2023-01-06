using Test
using test_CI_windows
using DifferentialEquations

sol1 = ode_test()


val_test1 = 0.5
val_test2 = 1.3728005076225747


# @test sol.u[1] ≈ val_test1
# @test sol.u[end] ≈ val_test2



function lorenz!(du,u,p,t)
    du[1] = 10.0*(u[2]-u[1])
    du[2] = u[1]*(28.0-u[3]) - u[2]
    du[3] = u[1]*u[2] - (8/3)*u[3]
end

u0 = [1.0;0.0;0.0]
tspan = (0.0,100.0)
prob = ODEProblem(lorenz!,u0,tspan)
sol2 = solve(prob)

val_test3 = 30.009595859250396
# @test sum(sol.u[end]) ≈ val_test3


@testset begin
    @test sol1.u[1] ≈ val_test1
    @test sol1.u[end] ≈ val_test2
    @test sum(sol2.u[end]) ≈ val_test3
end