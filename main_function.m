%The different cases considered are associated with the testing rate, 
%healthcare capacity and cost wieghts for acutely symptomatic and deceased
%population----------------------------------------------------------------

clear all;
clc;

pi_val = [0;0.05;0.1]; %Testing rate values - values of pi
psi_val = 0.8 %Vaccinating rate values - values of psi
c_1_a_val= [0;50000;100000]; %Costs associated with acutely symptomatic population
     
%Costs associated with diseased population     
C_dth = [0; 600; 1200; 1800;6000; 12000; 18000];

N = length(C_dth); %number of iterations
     
%Data (Italy)
Rho = 3.27; %based on 'Monitoring transmissibility and mortality'
gamma_i = 1/14; % Recovery rate from infected undetected
gamma_d = 1/14; % Recovery rate from infected detected
gamma_a = 1/12.39; %Recovery rate from hospitalized
mi = 0.0085; %Transition rate from acutely symptomatic to deceased
dt = 1; %time increments
psi=0;

for q = 1:3 %associated with three different cost weights for the acutely symptomatic population
    for f = 1:3 %Different testing rate policies
        for j=1:3 %Different healthcare capacity levels

            %ksi_i = H_in/(1-H_in)*gamma_i; %Transition rate from infected undetected to acutely symptomatic
            ksi_i = 1/gamma_i;
            %ksi_d = H_in/(1-H_in)*gamma_d; %Transition rate from infected detected to acutely symptomatic
            ksi_d = 1/gamma_d;
            beta = Rho*(gamma_i + ksi_i); %Definition of R0 in SIDAREV, proven in our paper

            c_1_a = diag([0;0;0;c_1_a_val(q,1);0;0]); %Cost associated with states

            pi_set = pi_val(f,1); %Adopted testing rate

            %Different cases of cost weights associated with deceased
            %population---------------------------------------------------
            
            parfor i=1 + (j-1)*N:N + (j-1)*N
                [x{i}, u(i,:),C(:,i), C1(:,i), C2(:,i), C3(:,i),C4(:,i)] =  optimal_strategy(dt, beta,  gamma_i, gamma_d, gamma_a, ksi_i, ksi_d, mi, C_dth, c_1_a, pi_set );
            end
            
        end

        %Workspace is saved in a local folder

        FileName   = ['c1_' num2str(c1a(4,4)) '_v_' num2str(v_set) '.mat'];
        save(FileName)

    end
end

