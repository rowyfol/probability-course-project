clc; clear; close all;

sigma = 1;
nbin = 50;
N_values = [10, 100, 10000];

xgrid = linspace(0, 6, 1000);
pdf_rayleigh = (xgrid./sigma^2).*exp(-xgrid.^2/(2*sigma^2));

for i = 1:length(N_values)
    N = N_values(i);
    X = raylrnd(sigma, N, 1);

    figure;
    histogram(X, nbin, 'Normalization','pdf');
    hold on;
    plot(xgrid, pdf_rayleigh, 'LineWidth', 2);
    grid on;

    title(['Rayleigh Distribution: N = ', num2str(N)]);
    xlabel('x');
    ylabel('PDF');
    legend('Normalized Histogram','Theoretical PDF');
end
