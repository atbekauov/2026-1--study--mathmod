using DifferentialEquations, Plots
mkpath(plotsdir(script_name))

k = 16.9

r0 = k/5.7
r0_2 = k/3.7
theta0 = (0.0, 2*pi)
theta0_2 = (-pi, pi)

fi = 3*pi/4;
t = (0, 50);

x(t) = tan(fi)*t;

f(r, p, t) = r/sqrt(21.09)

prob = ODEProblem(f, r0, theta0)

sol = solve(prob, saveat = 0.01)

plot(sol.t, sol.u, proj=:polar, lims=(0, 15), label = "Траекория движения катера")
