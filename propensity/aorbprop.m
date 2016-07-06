% chou-fasman propensity

function [alpha,beta]=cfprop(sequence)

for i=1:length(sequence)
    
    switch sequence(i)
        case 'A',a(i)=1.43;b(i)=0.67;
		case 'C',a(i)=0.60;b(i)=1.37;
		case 'D',a(i)=0.90;b(i)=0.46;
		case 'E',a(i)=1.39;b(i)=0.67;
		case 'F',a(i)=0.91;b(i)=1.76;
		case 'G',a(i)=0.40;b(i)=0.75;
		case 'H',a(i)=0.77;b(i)=0.97;
		case 'I',a(i)=1.03;b(i)=2.01;
		case 'K',a(i)=1.13;b(i)=0.73;
		case 'L',a(i)=1.29;b(i)=1.26;
		case 'M',a(i)=1.18;b(i)=0.96;
		case 'N',a(i)=0.71;b(i)=0.41;
		case 'P',a(i)=0.45;b(i)=0.55;
		case 'Q',a(i)=1.35;b(i)=0.58;
		case 'R',a(i)=1.28;b(i)=0.63;
		case 'S',a(i)=0.80;b(i)=0.72;
		case 'T',a(i)=0.85;b(i)=1.05;
		case 'V',a(i)=0.94;b(i)=2.09;
		case 'W',a(i)=1.10;b(i)=1.19;
		case 'Y',a(i)=0.95;b(i)=1.38;
    end
end
alpha=a;
beta=b;