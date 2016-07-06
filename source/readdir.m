sdir=dir('D:\software\matlab6p1\work\waveletcf\concise\*.concise'); %这样可以过滤.和..等文件夹
cdir=struct2cell(sdir);
str_dir=char(cdir(1,:)); %cell的第一行是文件名
length=length(str_dir);
for i=1:length
    filename=str_dir(i,:);
    readconcise(filename,i);    
end