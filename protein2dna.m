function dnaseq =protein2dna ( proteinseq)
%% Not the most efficient function, but works. 
dnaseq = []
for i = proteinseq
%% GLY
i = string(i); 
if i == 'Gly' 
a = randi(4,1); 
    if a == 1
        seq = 'GGG';
    elseif a == 2
        seq = 'GGA';
    elseif  a == 3
        seq = 'GGT';
    elseif a == 4
        seq = 'GGC';
    end 
dnaseq = [dnaseq seq];
end 
 

%%GLU
if i == 'Glu' 
b = randi (2,1);
if b == 1 
seq = 'GAG';
elseif b == 2 
seq = 'GAA'; 
end 
dnaseq = [dnaseq seq]; 
end 

%%Asp 
if i == 'Asp' 
b = randi (2,1);
if b == 1 
seq = 'GAT';
elseif b == 2 
seq = 'GAC'; 
end
dnaseq = [dnaseq seq]; 
end 

%%Val
if i == 'Val' 
b = randi (4,1);
if b == 1 
seq = 'GTG';
elseif b == 2 
seq = 'GTA'; 
elseif b == 3 
seq = 'GTT';
elseif b == 4 
seq = 'GTC';
end
dnaseq = [dnaseq seq]; 
end 

%%Ala
if i == 'Ala' 
b = randi (4,1);
if b == 1 
seq = 'GCG';
elseif b == 2 
seq = 'GCA'; 
elseif b == 3 
seq = 'GCT';
elseif b == 4 
seq = 'GCC';
end
dnaseq = [dnaseq seq]; 
end 

%%Arg
if i == 'Arg ' 
b = randi (2,1);
if b == 1 
seq = 'AGG';
elseif b == 2 
seq = 'AGA'; 
end
dnaseq = [dnaseq seq]; 
end 

%%Ser
if i == 'Ser' 
b = randi (2,1);
if b == 1 
seq = 'AGT';
elseif b == 2 
seq = 'AGC'; 
end
dnaseq = [dnaseq seq]; 
end

%%Lys
if i == 'Lys ' 
b = randi (2,1);
if b == 1 
seq = 'AAG';
elseif b == 2 
seq = 'AAA'; 
end
dnaseq = [dnaseq seq]; 
end 

%%Asn
if i  == 'Asn' 
b = randi (2,1);
if b == 1 
seq = 'AAT';
elseif b == 2 
seq = 'AAC'; 
end
dnaseq = [dnaseq seq]; 
end 

%Met
if i == 'Met' 
seq = 'ATG'; 
dnaseq = [dnaseq seq]; 
end 

%Ile
if i == 'Ile' 
b = randi (3,1);
if b == 1 
seq = 'ATA';
elseif b == 2 
seq = 'ATT'; 
elseif b == 3 
seq = 'ATC';

end
dnaseq = [dnaseq seq]; 
end 

%Thr
if i == 'Thr' 
b = randi (4,1);
if b == 1 
seq = 'ACG';
elseif b == 2 
seq = 'ACA'; 
elseif b == 3 
seq = 'ACT';
elseif b == 4 
seq = 'ACC';
end
dnaseq = [dnaseq seq]; 
end 

%Trp
if i == 'Trp'
seq = 'TGG' ;
dnaseq = [dnaseq seq]; 
end 
%end 
if i == 'End' 
b = randi (3,1);
if b == 1 
seq = 'TGA';
elseif b == 2 
seq = 'TAG'; 
elseif b == 3 
seq = 'TAA';
end 
dnaseq = [dnaseq seq]; 
end 

%%Cys
if i  == 'Cys' 
b = randi (2,1);
if b == 1 
seq = 'TGT';
elseif b == 2 
seq = 'TGC'; 
end
dnaseq = [dnaseq seq]; 
end 

%%Tyr

if i  == 'Tyr' 
b = randi (2,1);
if b == 1 
seq = 'TAT';
elseif b == 2 
seq = 'TAC'; 
end
dnaseq = [dnaseq seq]; 
end 

%%Leu 
if i  == 'Leu' 
b = randi (2,1);
if b == 1 
seq = 'TTG';
elseif b == 2 
seq = 'TTA'; 
end
dnaseq = [dnaseq seq]; 
end 

%%Phe 
if i == 'Phe'
b = randi (2,1);
if b == 1 
seq = 'TTT';
elseif b == 2 
seq = 'TTC'; 
end
dnaseq = [dnaseq seq]; 
end

%%Ser 
if i == 'Ser' 
b = randi (4,1);
if b == 1 
seq = 'TCG';
elseif b == 2 
seq = 'TCA'; 
elseif b == 3 
seq = 'TCT';
elseif b == 4 
seq = 'TCC';
end
dnaseq = [dnaseq seq]; 
end 

%%Arg
if i == 'Arg' 
b = randi (4,1);
if b == 1 
seq = 'CGG';
elseif b == 2 
seq = 'CGA'; 
elseif b == 3 
seq = 'CGT';
elseif b == 4 
seq = 'CGC';
end
dnaseq = [dnaseq seq]; 
end 

%%gln 
if i == 'Gln'
b = randi (2,1);
if b == 1 
seq = 'CAG';
elseif b == 2 
seq = 'CAA'; 
end
dnaseq = [dnaseq seq]; 
end

%%His 
if i == 'His'
b = randi (2,1);
if b == 1 
seq = 'CAT';
elseif b == 2 
seq = 'CAC'; 
end
dnaseq = [dnaseq seq]; 
end

if i == 'Leu' 
b = randi (4,1);
if b == 1 
seq = 'CTG';
elseif b == 2 
seq = 'CTA'; 
elseif b == 3 
seq = 'CTT';
elseif b == 4 
seq = 'CTC';
end
dnaseq = [dnaseq seq]; 
end 

if i == 'pro' 
b = randi (4,1);
if b == 1 
seq = 'CCG';
elseif b == 2 
seq = 'CCA'; 
elseif b == 3 
seq = 'CCT';
elseif b == 4 
seq = 'CCC';
end
dnaseq = [dnaseq seq]; 
end 
end 
end 