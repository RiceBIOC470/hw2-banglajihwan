function out=meannonan1(x)
out = [ ]; %make an ouput vector to store the average values
notin = isnan(x) | isinf(x); %determine where NaNs are
Z = sum(notin); % count NaN per column
for i = 1:size(x,1) 
     
    
    if Z(i) == 0 %zero when there is no NaN
        m = mean (x(:,i));
        out = [out m];
    else 
        Y=x(:,i)
        U = isnan(Y)
        Y(U) = 0; %switch NaN into 0 for averaging
        n= sum(Y)/((size(Y,1)-Z(i))); %Z(i) is subtracted to ignore the NaN value. 
        out = [out n];
        
    end 
end 