function probab = probabilityORF(N, N_ORF) 
con = 1; 
count = 0;
while con <= 1000
dnaseq = randdnaseq(N); 
[ORFlength, start_pos, stop_pos]=findORF(dnaseq); 
if ORFlength <N_ORF
        count=count+1
else
end
    con=con+1;
end 
disp(count);
probab=1-(count/1000)
end 
