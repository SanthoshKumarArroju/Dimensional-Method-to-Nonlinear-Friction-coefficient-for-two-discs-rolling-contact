clc
clear all
close all

p = [0.5; 1; 1.5]*10^9; 
radius = [5; 20; 40]*10^-3;
v = [1; 5; 10];
roughness = [0.1; 0.4; 0.7]*10^-6;
viscosity = [0.01502; 0.00703; 0.00398];
p_visc_coeff  = [15.8; 13.7; 12.2]*10^-9;
density = [977.80; 962.80; 947.80];
load = [5; 10; 15]*10^3;
E = [200; 200; 200]*10^9;

% set_1
b = -5:0.1:5;
pi1_1 = (p(1)* p_visc_coeff(1)).^b .* radius(1);
pi1_2 = (p(2)* p_visc_coeff(2)).^b .* radius(2);
pi1_3 = (p(3)* p_visc_coeff(3)).^b .* radius(3);
hold on
plot(pi1_1, b, 'o')
plot(pi1_2, b, '*')
plot(pi1_3, b, '<')
xlabel('pi 1')
ylabel('b')
legend('pi 1')
    
% set_2
e = -5:0.1:5;
pi2_1 = radius(1)*((v(1)*viscosity(1))/p(1)).^e .* (roughness(1)).^(-1-e);
pi2_2 = radius(2)*((v(2)*viscosity(2))/p(2)).^e .* (roughness(2)).^(-1-e);
pi2_3 = radius(3)*((v(3)*viscosity(3))/p(3)).^e .* (roughness(3)).^(-1-e);
hold on
plot(pi2_1, e, 'o')
plot(pi2_2, e, '*')
plot(pi2_3, e, '<')
xlabel('pi 2')
ylabel('e')
legend('pi 2')

%set_3
pi3_1 = (load(1)*density(1))/viscosity(1)^2;
pi3_2 = (load(2)*density(2))/viscosity(2)^2;
pi3_3 = (load(3)*density(3))/viscosity(3)^2;
hold on
figure
plot(pi3_1, 'o')
plot(pi3_2, '*')
plot(pi3_3, '<')
xlabel('pi 3')
legend('pi 3')

% set_5
b = -5:0.1:5;
pi5_1 = (density(1) .*v(1)^2)/p(1)* (load(1)*p(1)/(viscosity(1)^2 .* v(1)^2)).^b;
pi5_2 = (density(2) .*v(2)^2)/p(2)* (load(2)*p(1)/(viscosity(2)^2 .* v(2)^2)).^b;
pi5_3 = (density(3) .*v(3)^2)/p(3)* (load(3)*p(1)/(viscosity(3)^2 .* v(3)^2)).^b;
hold on
figure
plot(pi5_1, 'o')
plot(pi5_2, '*')
plot(pi5_3, '<')
xlabel('pi 5')
legend('pi 5')

% set_6
e = -5:0.1:5;
pi6_1 = (density(1) .*load(1))/viscosity(1)^2* (load(1)*E(1)/(viscosity(1)^2 .* v(1)^2)).^e;
pi6_2 = (density(2) .*load(2))/viscosity(2)^2* (load(2)*E(2)/(viscosity(2)^2 .* v(2)^2)).^e;
pi6_3 = (density(3) .*load(3))/viscosity(3)^2* (load(3)*E(3)/(viscosity(3)^2 .* v(3)^2)).^e;

hold on
plot(pi6_1, e, 'o')
plot(pi6_2, e, '*')
plot(pi6_3, e, '<')
xlabel('pi 5')
ylabel('e')
legend('pi 6')








