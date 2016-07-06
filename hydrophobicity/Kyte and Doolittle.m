% Nozaki,Tanford free energy

function hydro=hydrophobicity(sequence)

for i=1:length(sequence)
    
    switch sequence(i)
        case 'A',hydro(i)=1.8;
		case 'C',hydro(i)=2.5;
		case 'D',hydro(i)=-3.5;
		case 'E',hydro(i)=-3.5;
		case 'F',hydro(i)=2.8;
		case 'G',hydro(i)=-0.4;
		case 'H',hydro(i)=-3.2;
		case 'I',hydro(i)=4.5;
		case 'K',hydro(i)=-3.9;
		case 'L',hydro(i)=3.8;
		case 'M',hydro(i)=1.9;
		case 'N',hydro(i)=-3.5;
		case 'P',hydro(i)=-1.6;
		case 'Q',hydro(i)=-3.5;
		case 'R',hydro(i)=-4.5;
		case 'S',hydro(i)=-0.8;
		case 'T',hydro(i)=-0.7;
		case 'V',hydro(i)=4.2;
		case 'W',hydro(i)=-0.9;
		case 'Y',hydro(i)=-1.3;
    end
end