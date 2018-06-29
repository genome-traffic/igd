%To generate the 1000 genotype equations, we split the equations into 6
%different groups

%Genotype equations group 1
%locus 1 homozygous
%locus 2 homozygous
%locus 3 homozygous

delete('gamete_equations_group_1.txt')
% 
A = Genotypesgroupnumbers1;
% 
% B = mat2 %genotypes formulae

    for k = 1 : size(A)
        fileID = fopen ('gamete_equations_group_1.txt', 'at')
        fprintf(fileID,['a',[A{k,1}],'[t_] := ','a',[A{k,1}],'[t] = g',[B{k,1}],[B{k,3}],[B{k,5}],'[t-1]^2;','\n']); 
        fclose(fileID);
    end  
    
