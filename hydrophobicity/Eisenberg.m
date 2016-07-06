% Nozaki,Tanford free energy

function hydro=hydrophobicity(sequence)

for i=1:length(sequence)
    
    switch sequence(i)
        case 'A',hydro(i)=0.62;
		case 'C',hydro(i)=0.29;
		case 'D',hydro(i)=-0.9;
		case 'E',hydro(i)=-0.74;
		case 'F',hydro(i)=1.19;
		case 'G',hydro(i)=0.48;
		case 'H',hydro(i)=-0.4;
		case 'I',hydro(i)=1.38;
		case 'K',hydro(i)=-1.5;
		case 'L',hydro(i)=1.06;
		case 'M',hydro(i)=0.64;
		case 'N',hydro(i)=-0.78;
		case 'P',hydro(i)=0.12;
		case 'Q',hydro(i)=-0.85;
		case 'R',hydro(i)=-2.53;
		case 'S',hydro(i)=-0.18;
		case 'T',hydro(i)=-0.05;
		case 'V',hydro(i)=1.08;
		case 'W',hydro(i)=0.81;
		case 'Y',hydro(i)=0.26;
    end
end