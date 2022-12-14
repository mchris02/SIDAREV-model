%The different cases considered are associated with the testing rate, 
%healthcare capacity and cost wieghts for acutely symptomatic and deceased
%population----------------------------------------------------------------

clear all;
clc;

pi_val = 0.01; %Testing rate value - value of pi

psi_val = 0.05; %Vaccinating rate value - value of psi

c_1_a_val= [0;50000;100000]; %Costs associated with acutely symptomatic population

z=2;
m = [100/100000;300/100000;1000/100000];

dt = 1; %time increments
T_days = 365; %Number of days
T = T_days/dt; 
    
%Costs associated with diseased population     
C_dth = [0;2000;4000;8000;12000]; %[0;2000;4000;8000;12000];
b2 = [1;1000];

N = length(C_dth); %number of iterations
for q=1:3 %%associated with three different cost weights for the acutely symptomatic population
  for j=1:2
    for k=1:3
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
c_1_a = diag([0;0;0;c_1_a_val(q,1);0;0]); %Cost associated with states

%Different cases of cost weights associated with deceased %population---------------------------------------------------
parfor i= 1:N
   [x{i},u(:,i),C(:,i),C1(:,i),C2(:,i),C3(:,i),C4(:,i),sigma(:,i),g_o(:,i),g2_0(:,i),g_total(:,i),psi_s(:,i)] =  optimal_strategy(dt, beta,  gamma_i, gamma_d, gamma_a, ksi_i, ksi_d, mi, C_dth(i,1), c_1_a(4,4), pi_val,psi, m(k,1),z,b2(j,1));
end

%Workspace is saved in a local folder
FileName =['c_1_a_' num2str(c_1_a(4,4)) '_b2_' num2str(b2(j,1)) '_m_' num2str(m(k,1)) '.mat'];

 save(FileName)
     end
   end
end
