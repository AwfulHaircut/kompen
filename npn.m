% With Ub = 0.6V
Ucb = [0 0.025 0.05 0.075 0.1 0.125 0.15 0.175 0.2 0.225 0.25 0.5 0.75 1 1.25 1.5 1.75 2];
Icb = [51 59 107 125 133 138 139 141 141 143 142 142 143 145 143 147 147 148];

Uca = Ucb(6:end);
Ica = Icb(6:end);
p = polyfit(Uca, Ica, 1);
p(2)
p(1)
p(2) / p(1) % Prints the early voltage.

subplot(1,2,1);
plot(Ucb, Icb);
xlabel('Voltage U');
ylabel('Current I');
title('Colector current');

% With Uc = 0.5
Ub = [0 0.05 0.1 0.15 0.2 0.25 0.3 0.35 0.4 0.45 0.5 0.55 0.6 0.65 0.7];
Ib = [0 0 0 0 0 0 0 0 0 0 0.02 0.16 1.03 6.19 35.86].*1e-6;
subplot(1,2,2);
plot(Ub, Ib)
xlabel('Voltage U');
ylabel('Current I');
title('Base-emittor current')