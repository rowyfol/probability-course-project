clc; clear; close all;

alpha = 2;
beta  = 5;

B = gamma(alpha)*gamma(beta)/gamma(alpha+beta);
beta_pdf = @(x) (1/B) .* x.^(alpha-1) .* (1-x).^(beta-1);   % valid on [0,1]

xgridM = linspace(0,1,200001);  
M = max(beta_pdf(xgridM));

N_values = [10, 100, 10000];
nbin = 50;

xgrid = linspace(0,1,1000);
pdf_theory = beta_pdf(xgrid);

for i = 1:length(N_values)
    N = N_values(i);
    X = zeros(N,1);
    count = 0;

    while count < N
        u = rand;         
        v = rand;      
        if v <= beta_pdf(u)/M
            count = count + 1;
            X(count) = u;
        end
    end

    figure;
    histogram(X, nbin, 'Normalization','pdf');
    hold on;
    plot(xgrid, pdf_theory, 'LineWidth',2);
    grid on;

    title(['Beta(\alpha,\beta) with \alpha=',num2str(alpha),', \beta=',num2str(beta),', N=',num2str(N)]);
    xlabel('x'); ylabel('PDF');
    legend('Normalized Histogram','Theoretical PDF');
end
