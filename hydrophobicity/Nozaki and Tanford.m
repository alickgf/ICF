% Nozaki,Tanford free energy

function hydro=hydrophobicity(sequence)

for i=1:length(sequence)
    
    switch sequence(i)
        case 'A',hydro(i)=0.87;
		case 'C',hydro(i)=1.52;
		case 'D',hydro(i)=0.66;
		case 'E',hydro(i)=0.67;
		case 'F',hydro(i)=2.87;
		case 'G',hydro(i)=0.00;
		case 'H',hydro(i)=0.87;
		case 'I',hydro(i)=3.15;
		case 'K',hydro(i)=1.64;
		case 'L',hydro(i)=2.17;
		case 'M',hydro(i)=1.67;
		case 'N',hydro(i)=0.09;
		case 'P',hydro(i)=2.77;
		case 'Q',hydro(i)=0.00;
		case 'R',hydro(i)=0.85;
		case 'S',hydro(i)=0.07;
		case 'T',hydro(i)=0.07;
		case 'V',hydro(i)=1.87;
		case 'W',hydro(i)=3.77;
		case 'Y',hydro(i)=2.76;
    end
end