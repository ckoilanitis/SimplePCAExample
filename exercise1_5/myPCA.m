function [U, S] = myPCA(X)
%PCA Run principal component analysis on the dataset X
%   [U, S, X] = myPCA(X) computes eigenvectors of the covariance matrix of X
%   Returns the eigenvectors U, the eigenvalues (on diagonal) in S
%

% Useful values
[m, n] = size(X);

% You need to return the following variables correctly.
U = zeros(n);
S = zeros(n);


% Apply PCA by computing the eigenvectors and eigenvalues of the covariance matrix. 


R = (1/m)*X'*X;
[U, S] = eig(R); %Calculating eigenvalue's and eigenvector's matricies
eigenval = diag(S); %Exrtacting eigenvalues
[eigenval, ind] = sort(eigenval,1,'descend'); %Sorting eigenvalues
U = U(:,ind); %Match each eigenvalue with its eigenvector
S = diag(eigenval); %Sorting S according to magnitude of eigenvalues
% =========================================================================

end
