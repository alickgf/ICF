function extend=alpharightextend(start,prop)

extend=[];
length_prop=length(prop);
while(1)
    if((start==length_prop)|(start==2))
        break;
    else
        if((prop(start-2)+prop(start-1)+prop(start)+prop(start+1))<3.96)   % change value
            break;
        else
            start=start+1;
            extend=[extend,start];
        end
    end
end

if(start==2)
    while(start~=length_prop-1)
        if((prop(start-1)+prop(start)+prop(start+1)+prop(start+2))<3.96)   % change value
            break;
        else
            start=start+1;
            extend=[extend,start];
        end
    end
end