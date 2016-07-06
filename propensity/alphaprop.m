% chou-fasman propensity

function [alpha,beta]=cfprop(sequence)

for i=1:length(sequence)
    
    switch sequence(i)
        case 'A',a(i)=1.20;b(i)=0.00;
		case 'C',a(i)=0.81;b(i)=0.00;
		case 'D',a(i)=0.87;b(i)=0.00;
		case 'E',a(i)=1.23;b(i)=0.00;
		case 'F',a(i)=1.07;b(i)=0.00;
		case 'G',a(i)=0.59;b(i)=0.00;
		case 'H',a(i)=1.17;b(i)=0.00;
		case 'I',a(i)=1.08;b(i)=0.00;
		case 'K',a(i)=0.98;b(i)=0.00;
		case 'L',a(i)=1.18;b(i)=0.00;
		case 'M',a(i)=1.19;b(i)=0.00;
		case 'N',a(i)=0.86;b(i)=0.00;
		case 'P',a(i)=0.45;b(i)=0.00;
		case 'Q',a(i)=1.07;b(i)=0.00;
		case 'R',a(i)=1.18;b(i)=0.00;
		case 'S',a(i)=0.80;b(i)=0.00;
		case 'T',a(i)=0.85;b(i)=0.00;
		case 'V',a(i)=1.13;b(i)=0.00;
		case 'W',a(i)=1.04;b(i)=0.00;
		case 'Y',a(i)=0.93;b(i)=0.00;
    end
end
alpha=a;
beta=b;