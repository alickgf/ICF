function ends_overlap=overlapprocess(overlap)

single_position=[];
single_value=[];

len_overlap=length(overlap);
j=1;
if(overlap(2)-overlap(1)~=1)
    single_position(j)=1;
    single_value(j)=overlap(1);
    j=j+1;
end
if(overlap(len_overlap)-overlap(len_overlap-1)~=1)
    single_position(j)=len_overlap;
    single_value(j)=overlap(len_overlap);
    j=j+1;
end

for i=2:(len_overlap-1)
    if((overlap(i)-overlap(i-1)~=1)&(overlap(i+1)-overlap(i)~=1))
        single_position(j)=i;
        single_value(j)=overlap(i);
        j=j+1;
    end
end

if(isempty(single_position)~=1)
    overlap(:,single_position)=[];
end

if(isempty(overlap)~=1)
    ends_overlap=segment(overlap);
else
    ends_overlap=[];
end

for i=1:length(single_value)
    ends_overlap=[ends_overlap,single_value(i),single_value(i)];
end

ends_overlap=sort(ends_overlap);

    