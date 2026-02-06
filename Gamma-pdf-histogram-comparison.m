clc; clear; close all;

alpha = 2;
beta  = 1;
nbin = 50;
N_values = [10, 100, 10000];

xgrid = linspace(0,10,1000);
pdf_gamma = xgrid.^(alpha-1) .* exp(-xgrid/beta) ...
            ./ (gamma(alpha)*beta^alpha);

for i = 1:length(N_values)
    N = N_values(i);
    U1 = -log(rand(N,1));
    U2 = -log(rand(N,1));
    X = U1 + U2;

    figure;
    histogram(X, nbin, 'Normalization','pdf');
    hold on;
    plot(xgrid, pdf_gamma, 'LineWidth',2);
    grid on;

    title(['Gamma Distribution (\alpha=2,\beta=1), N = ', num2str(N)]);
    xlabel('x');
    ylabel('PDF');
    legend('Normalized Histogram','Theoretical PDF');
end
