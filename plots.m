function [x, y, z] = plots(dt, beta, gamma_i, gamma_d, gamma_a, ksi_i, ksi_d, mi, C_dth, c_1_a, pi_val,psi_val,s,z)

x = linspace(-2,2,20);
y = x';
z = x .* exp(-x.^2 - y.^2);
surf(z,y,z);