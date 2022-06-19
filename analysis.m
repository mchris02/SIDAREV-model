
% Calculate l dot transpose

syms s i d a r e v b y gamma_i lambda ksi_i gamma_d ksi_d gamma_a m zeta mu u c1 theta_e z L L1 L2 L3 L4 L5 L6 L7

%initialize L
L = [0;
    0;
    0;
    0;
    0;
    theta_e;
    0;]

%/Dot{L} L vectors
L_dot = [L1;
    L2;
    L3;
    L4;
    L5;
    L6;
    L7;]

%L^T 
Lt = transpose(L)

%Dot{L}^T

%initialize L
L = [0;
    0;
    0;
    0;
    0;
    theta_e;
    0;]


L_dottrans = transpose(L_dot)


fderiv_0 = [-b*i -b*s 0 0 0 0 0;
    +b*i b*s-gamma_i-ksi_i-lambda 0 0 0 0 0;
    0 lambda -gamma_d-ksi_d 0 0 0 0;
    0 ksi_i ksi_d -gamma_a-mu 0 0 0;
    0 gamma_i gamma_d gamma_a 0 0 0;
    0 0 0 mu 0 0 0;
    0 0 0 0 0 0 0]

fderiv_1 = [b*i b*s 0 0 0 0 0;
    -b*i -b*s 0 0 0 0 0;
    0 0 0 0 0 0 0;
    0 0 0 0 0 0 0;
    0 0 0 0 0 0 0;
    0 0 0 0 0 0 0;
    0 0 0 0 0 0 0]

fderiv_2 = [-1 0 0 0 0 0 0;
    0 0 0 0 0 0 0;
    0 0 0 0 0 0 0;
    0 0 0 0 0 0 0;
    0 0 0 0 0 0 0;
    0 0 0 0 0 0 0;
    1 0 0 0 0 0 0]

%c1_a
c1a = [0;
    0;
    0;
    c1*a;
    0;
    0;
    0]

x_dotderv = fderiv_0 + fderiv_1*u +fderiv_2*y;

l_tot = L_dottrans*x_dotderv;

lambda_final = -(transpose(c1a) + L_dottrans*x_dotderv);


g_x = m - (a+d) + (a+d)*v/z

dg_x = [0;
    0;
    (-1 + v/z);
    (-1 + v/z);
    0;
    0;
    (a+d)/z]

test = lambda_final - s*transpose(dg_x)