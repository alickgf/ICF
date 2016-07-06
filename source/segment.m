function ends=segment(chain)

j=1;
ends(j)=chain(j);
length_chain=length(chain);
for i=2:length_chain
    if((chain(i)-chain(i-1))~=1)
        j=j+1;
        ends(j)=(chain(i-1));
        j=j+1;
        ends(j)=(chain(i));
    end
end
j=j+1;
ends(j)=chain(i);