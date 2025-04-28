clc;
clear;
close all;

% Constants
Pt = 1; % Transmitted Power (Watt)
Gt = 1; % Transmitter Antenna Gain
Gr = 1; % Receiver Antenna Gain
lambda = 0.125; % Wavelength (m) for 2.4 GHz
ht = 10; % Transmitter height (m)
hr = 2;  % Receiver height (m)
L = 1;   % System Loss Factor

d = linspace(1, 1000, 1000); % Distance vector (m)

% Free-space Path Loss Model (Friis Equation)
Pr_friis = (Pt * Gt * Gr * (lambda.^2)) ./ ((4 * pi * d).^2 * L);

% Two-Ray Ground Reflection Model
Pr_two_ray = (Pt * Gt * Gr * (ht^2 * hr^2)) ./ (d.^4 * L);

% Plot Results
figure;
semilogy(d, Pr_friis, 'r', 'LineWidth', 2); hold on;
semilogy(d, Pr_two_ray, 'b', 'LineWidth', 2);
grid on;
xlabel('Distance (m)');
ylabel('Received Power (W)');
title('Two-Ray Ground Reflection Model vs Friis Free-Space Model');
legend('Friis Free-Space', 'Two-Ray Model');