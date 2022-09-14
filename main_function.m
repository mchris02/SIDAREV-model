%The different cases considered are associated with the testing rate, 
%healthcare capacity and cost wieghts for acutely symptomatic and deceased
%population----------------------------------------------------------------

clear all;
clc;

pi_val = 0.05; %Testing rate value - value of pi

psi_val = 0.1; %Vaccinating rate value - value of psi

c_1_a_val= [0;50000;100000]; %Costs associated with acutely symptomatic population

z=2;

m = 40/100000;
%m = 100/100000;
%m = 300/100000;
%m = 1000/100000;

dt = 1; %time increments
T_days = 365; %Number of days
T = T_days/dt; 
    
%Costs associated with diseased population     
C_dth = [0;2000;4000;8000;12000];

N = length(C_dth); %number of iterations
     
%Data
Rho = 5.08; %based on 'Monitoring transmissibility and mortality'
gamma_i = 1/14; % Recovery rate from infected undetected
gamma_d = 1/14; % Recovery rate from infected detected
gamma_a = 1/12.4; %Recovery rate from hospitalized
mi = 0.0066; %Transition rate from acutely symptomatic to deceased
psi= psi_val;
ksi_i = 0.0053;
ksi_d = 0.0053;
beta = Rho*(gamma_i + ksi_i); %Definition of R0 in SIDAREV, proven in our paper
sigma(1:T,1) = 0;
c_1_a = diag([0;0;0;c_1_a_val(2,1);0;0]); %Cost associated with states


%Different cases of cost weights associated with deceased %population---------------------------------------------------
j=1;
for i= 1 + (j-1)*N:N + (j-1)*N
   [x{i}, u(i,:),C(:,i), C1(:,i), C2(:,i), C3(:,i),C4(:,i),sigma(:,i)] =  optimal_strategy(dt, beta,  gamma_i, gamma_d, gamma_a, ksi_i, ksi_d, mi, C_dth(i,1), c_1_a(4,4), pi_val,psi, m,z );
end
            
        
%Workspace is saved in a local folder

FileName   = ['sidarev_model .mat'];
save(FileName)
    
