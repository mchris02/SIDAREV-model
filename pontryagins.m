%function of costate variables update based on pontryagin's minimum principle

function [y,dy] = pontryagins(dt,u,l, pi, x, psi, s, beta, gamma_i, gamma_d, gamma_a, ksi_i, ksi_d,mi,z,c_1)
    %Equations based on Pontryagin's minimum principle
    dy = -[l(1,1)*(psi + beta*x(2,1)*(1+u)) - l(2,1)*beta*(1-u) - l(7,1)*psi;
         l(1,1)*beta*x(1,1)*(1-u) + l(2,1)*(gamma_i + ksi_i + pi - beta*x(1,1)*(1-u)) - l(3,1)*pi - l(4,1)*ksi_i - l(5,1)*gamma_d;    
         l(3,1)*(gamma_d + ksi_d) - l(4,1)*ksi_d - l(5,1)*gamma_d - s*((x(7,1)/z)-1);
         l(4,1)*(gamma_a + mi) - l(5,1)*gamma_a - l(6,1)*mi - c_1*x(4,1) - s*((x(7,1)/z)-1);
         0;
         0;
         -(s*(x(4,1)+ x(3,1))/z)];

      y = l - dy*dt; %backwards in time, since boundary condition for costate variables is at t = T
