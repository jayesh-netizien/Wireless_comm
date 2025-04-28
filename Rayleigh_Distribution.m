clc;
clear all;
close all;

% Define parameters of Rayleigh distribution
sigma = 1.5;  % Scale parameter for Rayleigh distribution
sigma1 = 4;
sigma2 = 7;

% Define range for x values
x = linspace(0, 20, 1000); % Rayleigh distribution is defined for x >= 0

% Compute the PDF and CDF for each distribution
% PDF: f(x) = (x / sigma^2) * exp(-x^2 / (2*sigma^2))
% CDF: F(x) = 1 - exp(-x^2 / (2*sigma^2))

% For sigma
pdf_values = (x ./ (sigma^2)) .* exp(-x.^2 / (2 * sigma^2));
cdf_values = 1 - exp(-x.^2 / (2 * sigma^2));

% For sigma1
pdf_values1 = (x ./ (sigma1^2)) .* exp(-x.^2 / (2 * sigma1^2));
cdf_values1 = 1 - exp(-x.^2 / (2 * sigma1^2));

% For sigma2
pdf_values2 = (x ./ (sigma2^2)) .* exp(-x.^2 / (2 * sigma2^2));
cdf_values2 = 1 - exp(-x.^2 / (2 * sigma2^2));

% Plot the PDFs
figure;
plot(x, pdf_values, 'b-', 'LineWidth', 2);
hold on;
plot(x, pdf_values1, 'g-', 'LineWidth', 2);
plot(x, pdf_values2, 'r-', 'LineWidth', 2);

title('Probability Density Function (PDF) of Rayleigh Distribution');
xlabel('Random Variable (X)');
ylabel('PDF f(x)');
grid on;
legend(['\sigma = ' num2str(sigma)], ['\sigma_1 = ' num2str(sigma1)], ['\sigma_2 = ' num2str(sigma2)]);

% Plot the CDFs
figure;
plot(x, cdf_values, 'b-', 'LineWidth', 2);
hold on;
plot(x, cdf_values1, 'g-', 'LineWidth', 2);
plot(x, cdf_values2, 'r-', 'LineWidth', 2);

title('Cumulative Distribution Function (CDF) of Rayleigh Distribution');
xlabel('Random Variable (X)');
ylabel('CDF F(x)');
grid on;
legend(['\sigma = ' num2str(sigma)], ['\sigma_1 = ' num2str(sigma1)], ['\sigma_2 = ' num2str(sigma2)]);
