clc;
clear all;
close all;

v = -5:0.1:5; % Define a finer range for smoother plotting
G_d = zeros(size(v)); % Initialize G_d with zeros

% Define conditions for different v ranges
G_d(v <= -1) = 0; % G_d_0 for v <= -1
G_d((-1 < v) & (v <= 0)) = 20*log10(0.5 - 0.62.*v((-1 < v) & (v <= 0))); % G_d_1 for -1 < v <= 0
G_d((0 < v) & (v <= 1)) = 20*log10(0.5 * exp(-0.95 * v((0 < v) & (v <= 1)))); % G_d_2 for 0 < v <= 1
G_d((1 < v) & (v <= 2.4)) = 20*log10(0.4 - sqrt(0.1184 - (0.38 - 0.1*v((1 < v) & (v <= 2.4))).^2)); % G_d_3 for 1 < v <= 2.4
G_d(v > 2.4) = 20*log10(0.225 ./ v(v > 2.4)); % G_d_4 for v > 2.4

% Plot the function
figure;
plot(v, G_d, 'b', 'LineWidth', 2);
xlabel('v');
ylabel('G_d (dB)');
title('Diffraction Gain G_d vs v');
grid on;
