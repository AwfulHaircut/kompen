clc
clear all
close all
% With Ub = 0.6V
Uce = [0 0.025 0.05 0.075 0.1 0.125 0.15 0.175 0.2 0.225 0.25 0.5 0.75 1 1.25 1.5 1.75 2];
Ic = [51 59 107 125 133 138 139 141 141 143 142 142 143 145 143 147 147 148];

Uca = Uce(6:end);
Ica = Ic(6:end);
p = polyfit(Uca, Ica, 1);
p(2)
p(1)
p(2) / p(1); % Prints the early voltage.

subplot(2,2,1)
plot(Uce, Ic);
hold on;
plot(Uce, polyval(p, Uce), 'r');
xlabel('Voltage Uce - V');
ylabel('Current Ic - A');

Ib1 = [53.68 25.57 11.99 5.49 2.74 1.68 1.24 1.08 1.02 0.99 0.98 0.98 0.98 0.98 0.98 0.98 0.98 0.98] * 1e-6;
subplot(2,2,2);
plot(Uce, Ib1);
xlabel('Voltage Uce - V');
ylabel('Current Ib - A');
title('Colector current');

% With Uc = 0.5
Ub = [0 0.05 0.1 0.15 0.2 0.25 0.3 0.35 0.4 0.45 0.5 0.55 0.6 0.65 0.7 ];
Ib = [0 0 0 0 0 0 0 0 0 0 0.02 0.16 1.03 6.19 35.86].*1e-6;
subplot(2,2,3);
plot(Ub, Ib)
xlabel('Voltage Ub - V');
ylabel('Current Ib - A');
title('Base-emittor current')

% Idealty factor
Ic2 = [4e-6 4e-6 4e-6 4e-6 4e-6 4e-6 4e-6 4e-6 4e-6 4e-6 7e-6 24e-6 161e-6 961e-6 5625e-6];
pol = polyfit(Ub(find(Ub > 0.45)), log(Ic2(find(Ub > 0.45))), 1) * 0.0259;
mc = pol(1)
pol = polyfit(Ub(find(Ub > 0.45)), log(Ib(find(Ub > 0.45))), 1) * 0.0259;
mb = pol(1)

subplot(2,2,4);
plot(Ub, log(Ic2));
hold on;
plot(Ub, log(Ib), 'r');
xlabel('Voltage - V');
ylabel('Current - log(I)');
title('Ideality factor')
