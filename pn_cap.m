% Voltages
U = [-2 -1.8 -1.6 -1.4 -1.2 -1 -0.8 -0.6 -0.4 -0.2 0 0.2 0.4 0.6 0.8 1.0];
% Capacitances
C = [6 6.1 6.4 6.51 6.90 7.30 7.51 8 8.5 9.1 10 11.4 14.5 210 700 990].*1e-12;

plot(U, C);
xlabel('Voltage U');
ylabel('Capacitance C');
title('PN junction UC');