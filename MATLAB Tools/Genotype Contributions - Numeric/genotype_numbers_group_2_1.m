%list of genotypes for group 2.1


% 0 = ww, 
% 1 = wr 
% 2 = wt  
% 3 = rr 
% 4 = rt 
% 5 = tt 
% 6 = wr2 
% 7 = r2t 
% 8 = rr2 
% 9 = r2r2

%locus 1 (drive component) heterozygotes
A = {'1','2','4','6','7','8'}
%locus 2 (effector component 1) homozygotes
B = {'0','3','9','5'};
%locus 3 (effector component 2) homozygotes
C = {'0','3','9','5'};

delete('Genotypes_numbers_group_2_1.txt')

for aIndex = 1:length(A)
    for bIndex = 1:length(B)
        for cIndex = 1:length(C)
  
        fileID = fopen('Genotypes_numbers_group_2_1.txt','at');
        fprintf(fileID,[[A{aIndex}, B{bIndex},C{cIndex}], '\n']);
        fclose(fileID);
        end
    end
end