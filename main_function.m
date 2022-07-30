%The different cases considered are associated with the testing rate, 
%healthcare capacity and cost wieghts for acutely symptomatic and deceased
%population----------------------------------------------------------------

clear all;
clc;

pi_val = 0.5; %Testing rate value - value of pi

psi_val = 0.8 %Vaccinating rate value - value of psi

c_1_a_val= [0;50000;100000]; %Costs associated with acutely symptomatic population

s=1;
z=1;
dt = 1; %time increments
     
%Costs associated with diseased population     
C_dth = [0;2000;4000;8000;12000];

N = length(C_dth); %number of iterations
     
%Data
Rho = 5.08; %based on 'Monitoring transmissibility and mortality'
gamma_i = 1/14; % Recovery rate from infected undetected
gamma_d = 1/14; % Recovery rate from infected detected
gamma_a = 1/12.4; %Recovery rate from hospitalized
mi = 0.0085; %Transition rate from acutely symptomatic to deceased
psi=0;
ksi_i = 0.0053;
ksi_d = 0.0053;
beta = Rho*(gamma_i + ksi_i); %Definition of R0 in SIDAREV, proven in our paper

c_1_a = diag([0;0;0;c_1_a_val(1,1);0;0]); %Cost associated with states


%Different cases of cost weights associated with deceased %population---------------------------------------------------
j=1;
for i= 1 + (j-1)*N:N + (j-1)*N
   [x{i}, u(i,:),C(:,i), C1(:,i), C2(:,i), C3(:,i),C4(:,i)] =  optimal_strategy(dt, beta,  gamma_i, gamma_d, gamma_a, ksi_i, ksi_d, mi, C_dth(i,1), c_1_a(4,4), pi_val );
end
            
        
%Workspace is saved in a local folder

FileName   = ['sidarev_model .mat'];
save(FileName)
    
