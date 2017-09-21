function randomSeq = randdnaseq(N)
% returns a random dna sequence of length N
nucleotides = ['A','T','G','C'] ;
random_num = randi(4,1,N);
randomSeq= nucleotides(random_num) 