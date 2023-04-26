variance1 = [11 9;9 11];
variance2 = [2 0; 0 2];
mu1 = [-5;5];
mu2 = [10;15];
Sw = (1/2).*(variance1+variance2);

w = inv(Sw)*(mu1-mu2)
w = w./norm(w)

