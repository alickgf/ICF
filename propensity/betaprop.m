% chou-fasman propensity

function [alpha,beta]=cfprop(sequence)

for i=1:length(sequence)
    
    switch sequence(i)
        case 'A',a(i)=0.00;b(i)=0.92;
		case 'C',a(i)=0.00;b(i)=1.27;
		case 'D',a(i)=0.00;b(i)=0.61;
		case 'E',a(i)=0.00;b(i)=0.77;
		case 'F',a(i)=0.00;b(i)=1.41;
		case 'G',a(i)=0.00;b(i)=0.64;
		case 'H',a(i)=0.00;b(i)=1.06;
		case 'I',a(i)=0.00;b(i)=1.52;
		case 'K',a(i)=0.00;b(i)=0.98;
		case 'L',a(i)=0.00;b(i)=1.27;
		case 'M',a(i)=0.00;b(i)=1.24;
		case 'N',a(i)=0.00;b(i)=0.61;
		case 'P',a(i)=0.00;b(i)=0.36;
		case 'Q',a(i)=0.00;b(i)=0.88;
		case 'R',a(i)=0.00;b(i)=0.99;
		case 'S',a(i)=0.00;b(i)=0.84;
		case 'T',a(i)=0.00;b(i)=1.08;
		case 'V',a(i)=0.00;b(i)=1.51;
		case 'W',a(i)=0.00;b(i)=1.27;
		case 'Y',a(i)=0.00;b(i)=1.39;
    end
end
alpha=a;
beta=b;