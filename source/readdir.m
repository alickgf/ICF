sdir=dir('D:\software\matlab6p1\work\waveletcf\concise\*.concise'); %�������Թ���.��..���ļ���
cdir=struct2cell(sdir);
str_dir=char(cdir(1,:)); %cell�ĵ�һ�����ļ���
length=length(str_dir);
for i=1:length
    filename=str_dir(i,:);
    readconcise(filename,i);    
end