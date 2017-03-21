%meksika şapkası cıkması gerekiyor.
clear;

sigma = 10;
x = -3 * sigma : 3 * sigma;

sigma2 = sigma * 1.75;
x2 = -3 * sigma2 : 3 * sigma2;

x3 = zeros(1,length(x2),'double');
indis = round((length(x2) - length(x)) / 2);




%for i=indis:length(x2) - indis
%    x3(i) = x(k);
%    k = k + 1;
%end


N = length(x3);
k = 1;
G = zeros(1,N,'double');
for i=indis:N - indis
   G(i) = (1 / (sqrt(2 * pi) * sigma)) * exp(-(x(k)^2) / (2 * sigma ^ 2));
   k = k + 1;
end


N = length(x2);
G2 = zeros(1,N,'double');
for i=1:N
   G2(i) = (1 / (sqrt(2 * pi) * sigma2)) * exp(-(x2(i)^2) / (2 * sigma2 ^ 2));
end


plot(G - G2);
