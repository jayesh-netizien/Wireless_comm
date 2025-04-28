clc;
clear all;
close all;

% Define parameters of Gaussian distribution
mu = 0; % Mean
sigma = 1.5; % Standard Deviation

mu1 = 5;
sigma1 = 4;

mu2 = 5;
sigma2 = 7;

% Generate random samples from the Gaussian distribution
sample_size = 1000;
random_samples = mu + sigma * randn(sample_size, 1);

% Compute the PDF and CDF
x = linspace(-20, 20, 1000);
pdf_values = (1 / (sigma * sqrt(2 * pi))) * exp(-(x - mu).^2 / (2 * sigma^2));
cdf_values = 0.5 * (1 + erf((x - mu) / (sigma * sqrt(2))));

% Plot the PDF
figure;
plot(x, pdf_values, 'b-', 'LineWidth', 2, 'DisplayName', ['\sigma = ' num2str(sigma)]);
hold on;
pdf_values1 = (1 / (sigma1 * sqrt(2 * pi))) * exp(-(x - mu1).^2 / (2 * sigma1^2));
cdf_values1 = 0.5 * (1 + erf((x - mu1) / (sigma1 * sqrt(2))));
plot(x, pdf_values1, 'g-', 'LineWidth', 2, 'DisplayName', ['\sigma_1 = ' num2str(sigma1)]);

pdf_values2 = (1 / (sigma2 * sqrt(2 * pi))) * exp(-(x - mu2).^2 / (2 * sigma2^2));
cdf_values2 = 0.5 * (1 + erf((x - mu2) / (sigma2 * sqrt(2))));
plot(x, pdf_values2, 'r-', 'LineWidth', 2, 'DisplayName', ['\sigma_2 = ' num2str(sigma2)]);

title('Probability Density Function (PDF) of Gaussian Distribution');
xlabel('Random Variable(X)');
ylabel('PDF f(x)');
grid on;
legend show;

% Plot the CDF
figure;
plot(x, cdf_values, 'b-', 'LineWidth', 2, 'DisplayName', ['\sigma = ' num2str(sigma)]);
hold on;
plot(x, cdf_values1, 'g-', 'LineWidth', 2, 'DisplayName', ['\sigma_1 = ' num2str(sigma1)]);
plot(x, cdf_values2, 'r-', 'LineWidth', 2, 'DisplayName', ['\sigma_2 = ' num2str(sigma2)]);

title('Cumulative Distribution Function (CDF) of Gaussian Distribution');
xlabel('Random Variable(X)');
ylabel('CDF F(x)');
grid on;
legend show;
