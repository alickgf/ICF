function wcfprediction=wcf(sequence)

[alpha,beta]=cfprop(sequence);

for i=1:length(sequence)
    position_alpha(i)='C';
    position_beta(i)='C';
end

hydro=hydrophobicity(sequence);

% common nucleation region
% coefs=cwt(hydro,1:64,'morl','glb');
coef=cwt(hydro,9,'morl');

j=1;
for i=2:(length(coef)-1)
    if(((coef(i-1)<=coef(i))&(coef(i+1)<=coef(i))&(coef(i)>0))|((coef(i-1)>=coef(i))&(coef(i+1)>=coef(i))&(coef(i)<0)))
        core(j)=i;
        j=j+1;
    end
end

core_alpha=core;
core_beta=core;

% alpha segment

% extension
wcf_alpha=core_alpha;
for i=1:length(wcf_alpha)
    extend=alphaleftextend(core_alpha(i),alpha);    % in order to change alpha extention threshold
    wcf_alpha=[wcf_alpha,extend];
    extend=alpharightextend(core_alpha(i),alpha);
    wcf_alpha=[wcf_alpha,extend];
end
wcf_alpha=sort(wcf_alpha);
wcf_alpha=unique(wcf_alpha);

if(length(wcf_alpha)==1)
    ends_alpha_extend=[wcf_alpha,wcf_alpha];
else
    ends_alpha_extend=overlapprocess(wcf_alpha);
end

% final alpha segment
alphasum=0;
betasum=0;

for i=1:2:length(ends_alpha_extend)
    for j=ends_alpha_extend(i):ends_alpha_extend(i+1)
        alphasum=alphasum+alpha(j);
        betasum=betasum+beta(j);
    end
    average=alphasum/(ends_alpha_extend(i+1)-ends_alpha_extend(i)+1);
%    if((average>=1.03)&(alphasum>betasum))
%    if(alphasum>betasum)
        for j=ends_alpha_extend(i):ends_alpha_extend(i+1)
            position_alpha(j)='H';
        end
%    end
    alphasum=0;
    betasum=0;
end    


% beta segment

wcf_beta=core_beta;
for i=1:length(wcf_beta)
    extend=betaleftextend(core_beta(i),beta);   % in order to change beta extention threshold
    wcf_beta=[wcf_beta,extend];
    extend=betarightextend(core_beta(i),beta);
    wcf_beta=[wcf_beta,extend];
end
wcf_beta=sort(wcf_beta);
wcf_beta=unique(wcf_beta);

if(length(wcf_beta)==1)
    ends_beta_extend=[wcf_beta,wcf_beta];
else
    ends_beta_extend=overlapprocess(wcf_beta);
end

alphasum=0;
betasum=0;

for i=1:2:length(ends_beta_extend)
    for j=ends_beta_extend(i):ends_beta_extend(i+1)
        alphasum=alphasum+alpha(j);
        betasum=betasum+beta(j);
    end
    average=betasum/(ends_beta_extend(i+1)-ends_beta_extend(i)+1);
%    if((average>=1.05)&(alphasum<betasum))
%    if(alphasum<betasum)
        for j=ends_beta_extend(i):ends_beta_extend(i+1)
            position_beta(j)='E';
        end
%    end
    alphasum=0;
    betasum=0;
end


% overlap process
overlap=[];
for i=1:length(sequence)
    wcfprediction(i)='C';
end
j=1;
for i=1:length(sequence)
    if((position_alpha(i)=='H')&(position_beta(i)=='C'))
        wcfprediction(i)='H';
    elseif((position_alpha(i)=='C')&(position_beta(i)=='E'))
        wcfprediction(i)='E';
    elseif((position_alpha(i)=='H')&(position_beta(i)=='E'))
        overlap(j)=i;
        j=j+1;
    end
end
if(isempty(overlap)~=1)
    if(length(overlap)==1)
        ends_overlap=[overlap,overlap];
    else
        ends_overlap=overlapprocess(overlap);
        alphasum=0;
        betasum=0;
        for i=1:2:(length(ends_overlap)-1)
            for j=ends_overlap(i):ends_overlap(i+1)
                alphasum=alphasum+alpha(j);
                betasum=betasum+beta(j);
            end
            if(alphasum>betasum)
                for j=ends_overlap(i):ends_overlap(i+1)
                    wcfprediction(j)='H';
                end
            elseif(alphasum<betasum)
                for j=ends_overlap(i):ends_overlap(i+1)
                    wcfprediction(j)='E';
                end
            end
            alphasum=0;
            betasum=0;
        end
    end
end

% biological significant process
wcfprediction=biosignificant(wcfprediction);