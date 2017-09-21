function plotProbabilityORF(N_ORF); 
upbound=N_ORF+300
N=1; 
M=[ ];
P = [ ];
while N <= upbound
probab=probabilityORF(N, N_ORF)
N= N+1 
M = [M,N];
P = [P,probab];
end 
%figure
plot(M,P)
end 