function dnaseq = protein2dnaOptimized(proteinseq)
%% Not the most efficient function, but works. 
dnaseq = []
for i = proteinseq
%% GLY
i = string(i); 
if i == 'Gly' 
seq = 'GGC';   
dnaseq = [dnaseq seq];
end 
 

%%GLU
if i == 'Glu' 
seq = 'GAG';
dnaseq = [dnaseq seq]; 
end 

%%Asp 
if i == 'Asp' 
seq = 'GAC'; 
dnaseq = [dnaseq seq]; 
end 

%%Val
if i == 'Val' 
seq = 'GTG';
dnaseq = [dnaseq seq]; 
end 

%%Ala
if i == 'Ala' 
seq = 'GCC';
dnaseq = [dnaseq seq]; 
end 

%%Arg
if i == 'Arg ' 
seq = 'AGA'; 
dnaseq = [dnaseq seq]; 
end 

%%Ser
if i == 'Ser' 
seq = 'AGC'; 
dnaseq = [dnaseq seq]; 
end

%%Lys
if i == 'Lys ' 
seq = 'AAG';
dnaseq = [dnaseq seq]; 
end 

%%Asn
if i  == 'Asn' 
seq = 'AAC'; 
dnaseq = [dnaseq seq]; 
end 

%Met
if i == 'Met' 
seq = 'ATG'; 
dnaseq = [dnaseq seq]; 
end 

%Ile
if i == 'Ile' 
seq = 'ATC';
dnaseq = [dnaseq seq]; 
end 

%Thr
if i == 'Thr' 
seq = 'ACC';
dnaseq = [dnaseq seq]; 
end 

%Trp
if i == 'Trp'
seq = 'TGG' ;
dnaseq = [dnaseq seq]; 
end 

%end 
if i == 'End' 
seq = 'TGA';
dnaseq = [dnaseq seq]; 
end 

%%Cys
if i  == 'Cys'
seq = 'TGC'; 
dnaseq = [dnaseq seq]; 
end 

%%Tyr

if i  == 'Tyr' 
seq = 'TAC'; 
dnaseq = [dnaseq seq]; 
end 

%%Leu 
if i  == 'Leu' 
seq = 'TTG';
dnaseq = [dnaseq seq]; 
end 

%%Phe 
if i == 'Phe'
seq = 'TTC'; 
dnaseq = [dnaseq seq]; 
end

%%Ser 
if i == 'Ser' 
seq = 'TCC';
dnaseq = [dnaseq seq]; 
end 

%%Arg
if i == 'Arg'  
seq = 'CGG';
dnaseq = [dnaseq seq]; 
end 

%%gln 
if i == 'Gln'
seq = 'CAG';
dnaseq = [dnaseq seq]; 
end

%%His 
if i == 'His'
seq = 'CAC'; 
dnaseq = [dnaseq seq]; 
end

if i == 'Leu' 
seq = 'CTG';
dnaseq = [dnaseq seq]; 
end 

if i == 'Pro' 
seq = 'CCC';
end
dnaseq = [dnaseq seq]; 
end 
end 
