function readconcise(filename,i)
cd concise;

j=1;
fid=fopen(filename,'r');

while(1)
    tline=fgetl(fid);
    if(j==1)
        for m=1:length(tline)
            if(tline(m)==':')
                nstart=m;
            end
        end
        l=1;
        for n=(nstart+1):length(tline)
            if(tline(n)~=',')
                sequence(l)=tline(n);
                l=l+1;
            end
        end
    end

    if((tline(1)=='D')&(tline(2)=='S')&(tline(3)=='S')&(tline(4)=='P'))
        for m=1:length(tline)
            if(tline(m)==':')
                nstart=m;
            end
        end
        l=1;
        for n=(nstart+1):length(tline)
            if(tline(n)~=',')
                observe(l)=tline(n);
                l=l+1;
            end
        end
        break;
    end
    j=j+1;
end

fclose(fid);
cd ..

newobserve=refinesecondary(observe);
newobserve=biosignificant(newobserve);
wcfprediction=wcf(sequence);

i=num2str(i);
dir=strcat('D:\software\matlab6p1\work\waveletcf\algorithm\',i);
dir=strcat(dir,'.txt');
fid=fopen(dir,'w+t');
fprintf(fid,'>OSEQ\n%s\n>PSEQ\n%s\n>AA\n%s\n',newobserve,wcfprediction,sequence);
fclose(fid);