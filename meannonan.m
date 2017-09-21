function out=meannonan(x)
out = [ ];
notin = isnan(x) | isinf(x); 
Z = sum(notin); 
for i = 1:size(x,1) 
     
    disp(i);
    if Z(i) == 0
        m = mean (x(:,i));
        out = [out m]
    else 
        disp('hello')
        Y=x(:,i)
        U = isnan(Y)
        Y(U) = 0
        n= sum(Y)/((size(Y,1)-Z(i)));
        out = [out n];
        
    end 
end 
        
%notin=isnan(x) | isinf(x);
%x(notin)=[];
%mm=mean(x);
