clc
clear all
close all

% Parameters
Fs = 1000;                  %sampling frequency
T = 1;                      %calculate noise 
t = 0:1/Fs:T-1/Fs;          %generate AWGN
%t1 = 0.1/Fs:T              %time vector

f_signal = 10;              %frequency of sinusodial signal
A_signal = 1;               %amplitude
signal = A_signal * sin(2*pi*f_signal*t);
% plot(t, signal);             

%Noise generation
SNR_dB = 0;
noise_power = var(signal) / (10^(SNR_dB/10));
noise = sqrt(noise_power) * randn(size(t));

% Add noise to the signal
noisy_signal = signal + noise;

figure;
subplot(2,1,1);
plot(t, signal);
title('Original Signal');

subplot(2,1,2);
plot(t, noisy_signal);
title(['Noisy signal ( SNR = ' num2str(SNR_dB) 'dB)']);
xlabel('Time (seconds)');