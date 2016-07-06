function cfprediction=biosignificant(cfprediction)

% process tips
last=length(cfprediction);
if((cfprediction(1)=='H')&(cfprediction(2)~='H'))
    cfprediction(1)='C';
end
if((cfprediction(last)=='H')&(cfprediction(last-1)~='H'))
    cfprediction(last)='C';
end
if((cfprediction(1)=='E')&(cfprediction(2)~='E'))
    cfprediction(1)='C';
end
if((cfprediction(last)=='E')&(cfprediction(last-1)~='E'))
    cfprediction(last)='C';
end

% delete single secondary structure
for i=2:(last-1)
    if((cfprediction(i)=='H')&(cfprediction(i-1)~='H')&(cfprediction(i+1)~='H'))
        cfprediction(i)='C';
    elseif((cfprediction(i)=='E')&(cfprediction(i-1)~='E')&(cfprediction(i+1)~='E'))
        cfprediction(i)='C';
    end
end

temp_a=[];
temp_b=[];

% extract secondary structure segments
j=1;
k=1;
for i=1:last
    if(cfprediction(i)=='H')
        temp_a(j)=i;
        j=j+1;
    elseif(cfprediction(i)=='E')
        temp_b(k)=i;
        k=k+1;
    end
end


% delete helices number<=2
if(isempty(temp_a)~=1)
    ends_a=segment(temp_a);
    for i=1:2:length(ends_a)
        if(ends_a(i+1)-ends_a(i)==1)
            cfprediction(ends_a(i))='C';
            cfprediction(ends_a(i+1))='C';
        end
    end
end

% delete strands number <=2, and the only segment
if(isempty(temp_b)~=1)
    ends_b=segment(temp_b);
    sum_b=0;
    if((length(ends_b)==2)&(ends_b(2)-ends_b(1)==1))
        cfprediction(ends_b(1))='C';
        cfprediction(ends_b(2))='C';
    end
end