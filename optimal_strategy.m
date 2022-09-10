%Βέλτιστη Στρατηγική u, εύρεση cost function και hamiltonian function, ώστε
%να βρούμε την pontryagin's function

function [x, u, C, C1, C2, C3,C4,sigma,g,g2] = optimal_strategy(dt, beta, gamma_i, gamma_d, gamma_a, ksi_i, ksi_d, mi, C_dth, c_1_a, pi_val,psi,m,z)

T_days = 365; %Number of days

dt=1;

b2=1; %Cost associated with vaccination

R=1; %Cost associated with government strategy (used as basis)
 
%Initial conditions

r = 0.00001;


x(1,1) = 1 - r; %S
x(2,1) = r; %I
x(3,1) = 0; %D
x(4,1) = 0; %A
x(5,1) = 0; %R
x(6,1) = 0; %E
x(7,1) = 0; %V

%Data (Italy)
T = T_days/dt; 
l(1:length(x(:,1)),T) = 0; %Lambda boundary conditions
l(6,T) = C_dth; %Cost attributed to number of deaths 
u_max = 0.8; %maximum value for u
psi_max= 0.05; %maximum vacc value for psi

u(1:T,1) = 0.1; %Initialisation of u
psi(1:T,1) = psi; %Value of vacc rate,psi
pi(1:T,1) = pi_val; %Value of testing rate,pi 
sigma(1:T,1) = 0;

%Initialization of states and costs
for k=2:T
x(:,k) = dynamic_model(dt, x(:,k-1), beta(1,1), u(k-1,1),psi(k-1,1),pi(k-1,1), gamma_i,gamma_d,gamma_a,ksi_i,ksi_d,mi);
end

for k=T-1:-1:1
[l(:,k), dl(:,k)] = pontryagins(dt, u(k+1,1), l(:,k+1), pi(k+1,1), x(:,k+1), psi(k+1,1),sigma(k+1,1), beta(1,1), gamma_i, gamma_d, gamma_a, ksi_i, ksi_d, mi,z, c_1_a);
end

%Cost function - aggregate and components

    C1(1,1) = 0.5*dt*(R(1,1)*(u.'*u));  %Cost associated with government strategy, u

    C2(1,1) = 0.5*dt*(psi.'*psi)*b2; %Cost associated with vaccination, psi

    C3(1,1) = x(6,T)*C_dth;  %Cost associated with number of deaths 
     
    C4(1,1) = 0.5*dt*(c_1_a*(x(4,:)*x(4,:).'));  %Cost associated with acutely with the acutely ymptomatic population

    C(1,1) = 0.5*dt*(R(1,1)*(u.'*u)) +  0.5*b2*dt*(psi.'*psi) + x(6,T)*C_dth + 0.5*dt*(c_1_a*(x(4,:)*x(4,:).'));


N_iter = 50000; %number of iterations for the convergence of the algorithm

for j=1:N_iter

    %Calculation of the new value for u 
    u0 = u;
    %Calculation of the new value for psi
    psi0 = psi;
    for k=1:T
        u1(k,1) = min(max(inv(R(1,1))*beta(1,1)*x(1,k)*x(2,k)*(l(2,k) - l(1,k)),0),u_max); %f1
        psi1(k,1) = min(max(inv(b2)*beta(1,1)*x(1,k)*x(7,k)*(l(1,k) - l(7,k)),0),psi_max); %f2
    end
    
    a = 0.9995; %coefficient used to update the current u 
    u = a*u0 + (1-a)*u1;%new strategy u
    psi = a*psi0 + (1-a)*psi1; %new strategy psi
    
    %Update the SIDAREV model trajectory based on current u
    for k=2:T
        %Controlled SIDAREV epidemic model
        x(:,k) = dynamic_model(dt, x(:,k-1), beta(1,1), u(k-1,1),psi(k-1,1),pi(k-1,1), gamma_i,gamma_d,gamma_a,ksi_i,ksi_d,mi);
    end
    
    %Update the costate variables
    for k=T-1:-1:1
        %Pontryagin equations
        [l(:,k), dl(:,k)] = pontryagins(dt, u(k+1,1), l(:,k+1), pi(k+1,1), x(:,k+1), psi(k+1,1),sigma(k+1,1), beta(1,1), gamma_i, gamma_d, gamma_a, ksi_i, ksi_d, mi,z, c_1_a);
    end

    %Cost function - aggregate and components associated with iteration j
    C(j,1) = 0.5*dt*(R(1,1)*(u.'*u)) +  0.5*b2*dt*(psi.'*psi) + x(6,T)*C_dth + 0.5*dt*(c_1_a*(x(4,:)*x(4,:).'));

    C1(j,1) = 0.5*dt*(R(1,1)*(u.'*u));

    C2(j,1) = 0.5*b2*dt*(psi.'*psi);

    C3(j,1) = x(6,T)*C_dth; 

    C4(j,1) = 0.5*dt*(c_1_a*(x(4,:)*x(4,:).')); 
    
    %constant ανάλογα με το πόσο γρήγορα τρέχει ο κώδικας - αυξάνεται το σίγμα
   constant1=1;

    for k=1:T
      
      g2(k,1)=  (x(4,k)+x(3,k)) + (x(4,k)+x(3,k))*x(7,k)/z;
      g(k,1) = - m + g2(k,1);

        if g(k,1) > 0 

            sigma(k,1) = sigma(k,1) + constant1/100*abs(g(k,1));
                     
        elseif g(k,1) < 0 

            sigma(k,1) = sigma(k,1) - constant1/100*abs(g(k,1));

            sigma(k,1) = max(0,sigma(k,1));

        end
        
    end     
end
 
   figure(1);plot(g);
   figure(2);plot(g2);
   figure(3);plot(sigma);

end
    
    
