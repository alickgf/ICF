function extend=alphaleftextend(start,prop)

extend=[];
while(1)
    if((start==1)|(start==length(prop)-1))
        break;
    else
        if((prop(start-1)+prop(start)+prop(start+1)+prop(start+2))<3.96)    % change value
            break;
        else
            start=start-1;
            extend=[extend,start];
        end
    end
end

if(start==length(prop)-1)
    while(start~=2)
        if((prop(start-2)+prop(start-1)+prop(start)+prop(start+1))<3.96)    % change value
            break;
        else
            start=start-1;
            extend=[extend,start];
        end
    end
end