%To generate the 1000 genotype equations, we split the equations into 6
%different groups

%Genotype equations group 3
%locus 1 (drive component) heterozygotes
%locus 2 (effector component 1) heterozygotes
%locus 3 (effector component 2) homozygotes

delete('gamete_equations_group_3.txt')
% 
A = Genotypesnumbersgroup3;
% 
% B = mat2 %genotypes formulae

    for k = 1 : size(A)
        fileID = fopen ('gamete_equations_group_3.txt', 'at')
        fprintf(fileID,['a',[A{k,1}],'[t_] := ','a',[A{k,1}],'[t] = 2 * (g',[B3{k,1}],[B3{k,3}],[B3{k,5}],'[t - 1] * g',[B3{k,2}],[B3{k,4}],[B3{k,6}],'[t-1] + g',[B3{k,2}],[B3{k,3}],[B3{k,6}],'[t - 1] * g',[B3{k,1}],[B3{k,4}],[B3{k,5}],'[t-1])',';','\n']); 
        fclose(fileID);
    end  
    
