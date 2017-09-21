function proteinseq = dna2protein(dnaseq,frame)
% Input a dna sequence and a reading frame and returns the corresponding
% protein sequence. 
if nargin == 1 
    error('give DNA sequence and frame number as inputs')
elseif nargin == 2

%% Read codons.csv
fid = fopen('codons.csv', 'r');
openedfile = textscan(fid,'%s %s %f32 ','headerlines',1, 'Delimiter',',');
fclose(fid);
aacid=openedfile{1};%amino acid stored here
codon = openedfile{2}; %codons stored here 


%% Reading frame trimming 
if frame ==1
    if rem(size(dnaseq,2), 3) ==0
    seq_corr = dnaseq;
    elseif rem(size(dnaseq,2), 3) ==1
    seq_corr = dnaseq(1:end-1); %trimming off the end of the sequence if the sequence legnth is not a multiple of 3. This is process is repeated as seen below. 
    elseif rem(size(dnaseq,2),3) == 2
    seq_corr = dnaseq(1:end-2); 
    end
elseif frame ==2 
    seq_corr = dnaseq(2:end);
    if rem(size(seq_corr,2), 3) ==0
    seq_corr = seq_corr
    elseif rem(size(seq_corr,2), 3) ==1
    seq_corr = seq_corr(1:end-1); %trimming off the end of the sequence if the sequence legnth is not a multiple of 3. This is process is repeated as seen below. 
    elseif rem(size(seq_corr,2),3) == 2
    seq_corr = seq_corr(1:end-2); 
    end
            
elseif frame ==3
    seq_corr = dnaseq (3:end); 
    if rem(size(seq_corr,2), 3) ==0
    seq_corr = seq_corr
    elseif rem(size(seq_corr,2), 3) ==1
    seq_corr = dnaseq(1:end-1); %trimming off the end of the sequence if the sequence legnth is not a multiple of 3. This is process is repeated as seen below. 
    elseif rem(size(seq_corr,2),3) == 2
    seq_corr = dnaseq(1:end-2); 
    end
else
    
    error ('frame needs to be a number either 1, 2, or 3'); 
end 

%% Split into 3 codons
split_seq = cellstr(reshape(seq_corr,3,[])'); % doesnt work when string is not multiple of 3; So I had to trimm the sequence as seen above. 

%% Convert DNA to AminoAcid
codon = codon';
aacid = aacid' ;
for i = 1:size(split_seq,1)
translation =replace(split_seq, codon, aacid);

end
proteinseq = translation';
end 