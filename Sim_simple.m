

function [x, u, C, C1, C2, C3,C4] = Sim_simple(dt, beta, gamma_i, gamma_d, gamma_a, ksi_i, ksi_d, mi, C_dth, c_1_a, pi_set )

T_days = 365; %Number of days

b2=1;

m = 1 %Vaccination Rate

R=1 %Cost associated with government strategy (used as basis)

 
%Initial conditions
r = 0.00001;
x(1,1) = 1 - r; %S
x(2,1) = r; %I
x(3,1) = 0; %D
x(4,1) = 0; %A
x(5,1) = 0; %R
x(6,1) = 0; %E
X(7,1) = 0; %V

%Data (Italy)
T = T_days/dt; 
l(1:length(x(:,1)),T) = 0; %Lambda boundary conditions
l(length(x(:,1)),T) = C_dth; %Cost attributed to number of deaths
u_max = 0.8; %maximum value for u
psi_max= m;

u(1:T,1) = 0.4; %Initialisation of u
pi(1:T,1) = pi_set; %Constant value of testing rate,pi
psi(1:T,1) = psi_set; %Constant value of vaccination rate, v


%Initialization of states and costs
for k=2:T
x(:,k) = epidem(dt, x(:,k-1), beta(1,1), u(k-1,1),psi_i,pi(k-1,1), gamma_i,gamma_d,gamma_a,ksi_i,ksi_d,mi);
end

for k=T-1:-1:1
[l(:,k), dl(:,k)] = pontr(dt, u(k+1,1), l(:,k+1), pi(k+1,1), x(:,k+1),psi_i, beta(1,1), gamma_i, gamma_d, gamma_a, ksi_i, ksi_d, mi, c_1_a);
end

%Cost function - aggregate and components----------------------------------

    C(j,1) = 0.5*dt*(R(1,1)*(u.'*u)) +  0.5*b2*dt*(psi.'*psi) + x(6,T)*C_dth + 0.5*dt*(c_1_a(4,4)*(x(4,:)*x(4,:).'));

    C1(j,1) = 0.5*dt*(R(1,1)*(u.'*u));

    C2(j,1) = 0.5*b2*dt*(psi.'*psi);

    C3(j,1) = x(6,T)*C_dth; 

    C4(j,1) = 0.5*dt*(c_1_a(4,4)*(x(4,:)*x(4,:).')); 

N_iter = 100000; %number of iterations for the convergence of the algorithm

for j=1:N_iter

    %Calculation of the new value for u
    u0 = u;
    for k=1:T
        u1(k,1) = min(max(inv(R(1,1))*beta(1,1)*x(1,k)*x(2,k)*(l(2,k) - l(1,k)),0),u_max);
        %f1
    end
    
    a = 0.9995; %coefficient used to update the current u 
    u = a*u0 + (1-a)*u1;%new strategy u
    
    %Update the SIDAREV model trajectory based on current u
    for k=2:T
        %Controlled SIDAREV epidemic model
        x(:,k) = epidem(dt, x(:,k-1), beta(1,1), u(k-1,1),psi_i,pi(k-1,1), gamma_i,gamma_d,gamma_a,ksi_i,ksi_d,mi);
    end
    
    %Update the costate variables
    for k=T-1:-1:1
        %Pontryagin equations
        [l(:,k), dl(:,k)] = pontr(dt, u(k+1,1), l(:,k+1), pi(k+1,1), x(:,k+1),psi_i, beta(1,1), gamma_i, gamma_d, gamma_a, ksi_i, ksi_d, mi, c_1_a);
    end

    %Cost function - aggregate and components associated with iteration j
    C(j,1) = 0.5*dt*(R(1,1)*(u.'*u)) +  0.5*b2*dt*(psi.'*psi) + x(6,T)*C_dth + 0.5*dt*(c_1_a(4,4)*(x(4,:)*x(4,:).'));

    C1(j,1) = 0.5*dt*(R(1,1)*(u.'*u));

    C2(j,1) = 0.5*b2*dt*(psi.'*psi);

    C3(j,1) = x(6,T)*C_dth; 

    C4(j,1) = 0.5*dt*(c_1_a(4,4)*(x(4,:)*x(4,:).')); 

end

for j=1:N_iter

    %Calculation of the new value for u
    psi0 = psi;
    for k=1:T
        psi1(k,1) = min(max(inv(R(1,1))*beta(1,1)*x(1,k)*x(2,k)*(l(1,k) - l(7,k)),0),u_max);
        %f2
    end
    
    a = 0.9995; %coefficient used to update the current u 
    psi = a*psi0 + (1-a)*psi1;%new strategy u
    
    %Update the SIDAREV model trajectory based on current u
    for k=2:T
        %Controlled SIDAREV epidemic model
        x(:,k) = epidem(dt, x(:,k-1), beta(1,1), u(k-1,1),psi_i,pi(k-1,1), gamma_i,gamma_d,gamma_a,ksi_i,ksi_d,mi);
    end
    
    %Update the costate variables
    for k=T-1:-1:1
        %Pontryagin equations
        [l(:,k), dl(:,k)] = pontr(dt, u(k+1,1), l(:,k+1), pi(k+1,1), x(:,k+1),psi_i, beta(1,1), gamma_i, gamma_d, gamma_a, ksi_i, ksi_d, mi, c_1_a);
    end

    %Cost function - aggregate and components associated with iteration j
    C(j,1) = 0.5*dt*(R(1,1)*(u.'*u)) +  0.5*b2*dt*(psi.'*psi) + x(6,T)*C_dth + 0.5*dt*(c_1_a(4,4)*(x(4,:)*x(4,:).'));

    C1(j,1) = 0.5*dt*(R(1,1)*(u.'*u));

    C2(j,1) = 0.5*b2*dt*(psi.'*psi);

    C3(j,1) = x(6,T)*C_dth; 

    C4(j,1) = 0.5*dt*(c_1_a(4,4)*(x(4,:)*x(4,:).')); 

end


g_x = m - (a+d) + (a+d)*v/z

for j=1:N_iter

    for k=1:T
        g(:,k) = m - (a+d) + (a+d)*(v/z)

    if g(:,k) < 0

        s(k) = forw(s(k,1),dt)

    else
        s(k) = back(s(k,1),dt)

    end
    end
    
    %Update the costate variables
    for k=T-1:-1:1
        %Pontryagin equations
        [l(:,k), dl(:,k)] = pontr(dt, u(k+1,1), l(:,k+1), pi(k+1,1), x(:,k+1),psi_i, beta(1,1), gamma_i, gamma_d, gamma_a, ksi_i, ksi_d, mi, c_1_a);
    end


end



