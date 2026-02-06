clc; clear; close all;

mu = 2;
sigma2 = 4;
sigma = sqrt(sigma2);

N_values = [10 100 10000];

fprintf('   N        mean(Z)      varN(Z)      varN-1(Z)\n');
fprintf('---------------------------------------------------\n');

for k = 1:length(N_values)
    N = N_values(k);

    X = randn(N,1);              % X ~ N(0,1)
    Z = mu + sigma * X;          % Z ~ N(mu, sigma^2)

    m  = mean(Z);                % sample mean
    vN = var(Z,1);               % variance with 1/N
    vU = var(Z);                 % unbiased variance with 1/(N-1)

    fprintf('%6d   %10.4f   %10.4f   %10.4f\n', N, m, vN, vU);
end
