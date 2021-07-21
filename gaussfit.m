%% GAUSSian FIT
%   Assuming data was sampled from a Gaussian distribution, returns the most
%  likely parameters for the underlying distribution.
% Input:
%   X - A D-by-N matrix with observation locations in each column (thus the
%   	observations are in D-dimensions and there are N of them).
% Output:
%   mu - D-by-1 vector indicating the center of the Gaussian distribution.
%   sigma - Scalar indicating the standard deviation of the Gaussian distribution
% Provided by Dominique Zosso: Machine Learning: Montana State University

function [mu, sigma] = gaussfit(X)
    [D,N] = size(X);
    mu = mean(X,2);
    X2 = (X - repmat(mu, [1 N])).^2;
    sigma = sqrt(mean(X2(:)));
%    disp("dim of data = " + D + " number of samples = " + N);
%    disp("mu " + mu);
%    disp("sigma " + sigma);
end
