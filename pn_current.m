% Voltages
U = [0 0.050 0.1 0.15 0.2 0.25 0.3 0.35 0.4 0.45 0.5 0.55 0.6 0.65 0.7 0.74];
% Currents
I = [30e-9 29.8e-9 30.1e-9 31.1e-9 31.9e-9 32.7e-9 33.8e-9 35.9e-9 43.3e-9 87.9e-9 1.27e-6 8.14e-6 43.69e-6 192e-6 0.76e-3 3e-3];

plot(U, I);
xlabel('Voltage U/V');
ylabel('Current I/A');
title('PN junction UI');