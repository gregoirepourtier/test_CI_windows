module test_CI_windows

# using SparseDiffTools
# using ExtendableSparse

import DifferentialEquations


greet() = "Hello World!"


export greet


# function ode_test()
#     f(u,p,t) = 1.01*u
#     u0 = 1/2
#     tspan = (0.0,1.0)
#     prob = ODEProblem(f,u0,tspan)
#     sol = solve(prob, Tsit5(), reltol=1e-8, abstol=1e-8)

#     return sol
# end



# export ode_test




end # module test_CI_windows
