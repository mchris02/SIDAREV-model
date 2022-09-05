
%Function describing the dynamics of the controlled SIDAREV model 

function [y,dy] = dynamic_model(dt, x, beta,u,psi,pi, gamma_i, gamma_d, gamma_a, ksi_i, ksi_d, mu)

    
    %Controlled SIDAREV model
    dy(1,1) = -beta*x(1,1)*x(2,1)*(1 - u) - psi*x(1,1); %Susceptible State
    dy(2,1) = beta*x(1,1)*x(2,1)*(1 - u) - gamma_i*x(2,1) - ksi_i*x(2,1) - pi*x(2,1); %Infected undetected State
    dy(3,1) = pi*x(2,1) - gamma_d*x(3,1) - ksi_d*x(3,1); %Detected infected State
    dy(4,1) = ksi_i*x(2,1) +  ksi_d*x(3,1) - gamma_a*x(4,1) - mu*x(4,1); %Acutely symptomatic State
    dy(5,1) = gamma_i*x(2,1) +  gamma_d*x(3,1) + gamma_a*x(4,1); %Recovered State
    dy(6,1) = mu*x(4,1); %Extinct  State
    dy(7,1) = psi*x(1,1); %Vaccinated State

    y = x + dt*dy; %State update
