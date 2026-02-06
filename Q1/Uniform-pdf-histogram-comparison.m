clc; clear; close all;

a = 0; 
b = 2;
nbin = 50;
N_values = [10, 100, 10000];

xgrid = linspace(a, b, 1000);
pdf_uniform = 1/(b-a) * ones(size(xgrid));

for i = 1:length(N_values)
    N = N_values(i);

    X = a + (b-a)*rand(N,1);

    figure;
    histogram(X, nbin, 'Normalization','pdf');
    hold on;
    plot(xgrid, pdf_uniform, 'LineWidth', 2);
    grid on;

    title(['Uniform Distribution: N = ', num2str(N)]);
    xlabel('x');
    ylabel('PDF');
    legend('Normalized Histogram','Theoretical PDF');
end
