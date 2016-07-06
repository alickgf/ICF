function new=refinesecondary(raw)

for i=1:length(raw)
    if((raw(i)=='H')|(raw(i)=='G')|(raw(i)=='I'))
        new(i)='H';
    elseif((raw(i)=='E')|(raw(i)=='B'))
        new(i)='E';
    else
        new(i)='C';
    end
end

% whether 'I' belongs to helix?  
    