%To generate the 1000 genotype equations, we split the equations into 6
%different groups

%Genotype equations group 2

%group 2.1
%locus 1 (drive component) heterozygotes
%locus 2 (effector component 1) homozygotes
%locus 3 (effector component 2) homozygotes

%group 2.2
%locus 1 (drive component) homozygotes
%locus 2 (effector component 1) heterozygotes
%locus 3 (effector component 2) homozygotes

%group 2.3
%locus 1 (drive component) homozygotes
%locus 2 (effector component 1) homozygotes
%locus 3 (effector component 2) heterozygotes

delete('gamete_equations_group_2.txt')
% 
A = Genotypesnumbersgroup2;
% 

    for k = 1 : size(A)
        fileID = fopen ('gamete_equations_group_2.txt', 'at')
        fprintf(fileID,['a',[A{k,1}],'[t_] := ','a',[A{k,1}],'[t] = 2 * g',[B2{k,1}],[B2{k,3}],[B2{k,5}],'[t - 1] * g',[B2{k,2}],[B2{k,4}],[B2{k,6}],'[t-1]',';','\n']); 
        fclose(fileID);
    end  
