function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

[N , nFeat] =size(X); %Same size for both classes

for j=1:nFeat
    mu = mean(X(:,j)); % mean of each column (feature)
    sigma = std(X(:,j)); % standart deviation of each column
    X_norm(:,j)=(X(:,j)-mu)/sigma;% normalize each column independently
end

% ============================================================