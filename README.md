# Probability Course Project

This repository contains solutions to probability and statistics course assignments.

## Q1 Folder - Distribution PDF Comparison

**Reference:** See `project2.pdf` Question 1

Question 1 involves comparing mathematical probability density functions (PDFs) with histogram results from simulations for various distributions at different sample sizes (N=10, N=100, N=10000).

### Files in Q1:

- **`Rayleigh-pdf-histogram-comparison.m`**: Compares the Rayleigh distribution's theoretical PDF formula with histogram simulation results. Generates visualizations showing how the histogram approximates the mathematical PDF as sample size increases.

- **`Uniform-pdf-histogram-comparison.m`**: Compares the Uniform distribution's theoretical PDF formula with histogram simulation results. Demonstrates the convergence of empirical histogram to the theoretical uniform distribution.

- **`Gamma-pdf-histogram-comparison.m`**: Compares the Gamma distribution's theoretical PDF formula with histogram simulation results. Shows how sample size affects the accuracy of histogram approximation to the Gamma PDF.

- **`beta-pdf-histogram-comparison.m`**: Compares the Beta distribution's theoretical PDF formula with histogram simulation results. Illustrates the relationship between sample size and histogram accuracy for the Beta distribution.

Each script runs simulations with three different sample sizes and visualizes the comparison between the normalized histogram and the theoretical PDF curve.

## Q2 Folder - Law of Large Numbers

**Reference:** See `project2.pdf` Question 2

Question 2 focuses on the Law of Large Numbers and Central Limit Theorem applications for Gaussian random variables.

### Files in Q2:

- **`A.m`**: Demonstrates the (Weak/Strong) Law of Large Numbers by generating a Gaussian random sequence with μ=2 and σ²=4, then computing the sample mean and variance at different sample sizes (N=10, N=100, N=10000). Compares the calculated values against the true mean (2) and variance (4) to show how accuracy improves with increasing N.
