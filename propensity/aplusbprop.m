% chou-fasman propensity

function [alpha,beta]=cfprop(sequence)

for i=1:length(sequence)
    
    switch sequence(i)
        case 'A',a(i)=1.62;b(i)=0.67;
		case 'C',a(i)=0.93;b(i)=1.02;
		case 'D',a(i)=0.97;b(i)=0.62;
		case 'E',a(i)=1.52;b(i)=0.82;
		case 'F',a(i)=0.80;b(i)=1.76;
		case 'G',a(i)=0.33;b(i)=0.71;
		case 'H',a(i)=0.76;b(i)=0.79;
		case 'I',a(i)=0.95;b(i)=1.74;
		case 'K',a(i)=1.01;b(i)=0.87;
		case 'L',a(i)=1.56;b(i)=1.07;
		case 'M',a(i)=1.61;b(i)=1.06;
		case 'N',a(i)=0.82;b(i)=0.55;
		case 'P',a(i)=0.31;b(i)=0.38;
		case 'Q',a(i)=1.51;b(i)=0.91;
		case 'R',a(i)=1.41;b(i)=0.82;
		case 'S',a(i)=0.66;b(i)=0.82;
		case 'T',a(i)=0.67;b(i)=1.32;
		case 'V',a(i)=0.95;b(i)=1.78;
		case 'W',a(i)=0.70;b(i)=1.47;
		case 'Y',a(i)=0.83;b(i)=1.27;
    end
end
alpha=a;
beta=b;