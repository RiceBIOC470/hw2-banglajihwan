function [ORFlength, start_pos, stop_pos] = findORF(dnaseq)
%Function to find the length of the longest open reading frame of a
%sequences called dnaseq

%fill in here. 
dnaseq1 = upper(dnaseq);
start = strfind(dnaseq1, 'ATG');
stop_1 = strfind(dnaseq1, 'TAA');
stop_2 =strfind(dnaseq1, 'TGA');
stop_3 = strfind(dnaseq1, 'TAG') ;
stop_all= [stop_1 stop_2 stop_3];
length=[];
seq=[];
stop_all2=sort(stop_all, 'descend');%sort from biggest to smallest
varA=0;
for i = stop_all2 
    for j = 1:size(start,1)
        length = i-start(j);
        %start(j)
        if rem(length,3)==0;
            seq=dnaseq1(start(j):i+2);
            varA = 1; 
            stop_pos = i;
            start_pos = start(j);
            disp('ORF found!');
            break %the loop breaks once we find the difference between start and stop position divisible by 3. 
       
        else 
            length=[];
            disp('Finding ORF!');
            
        end 
        
    end 
    if varA == 1
        break 
    end 
end 
if size(seq,2) == 0
    disp('No ORFs found!')
    start_pos = 0;
    stop_pos = 0;
end 
disp(seq)
ORFlength = size(seq,2); 

