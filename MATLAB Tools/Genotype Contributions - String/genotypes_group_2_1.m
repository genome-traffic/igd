%list of genotypes for group 2.1
%paste text file into excel and convert it to one allele per column (one letter per column, there are six columns which are separated by commas in the text file generated by this script) 

%locus 1 (drive component) heterozygotes
%A = {'1','2','4','6','7','8'}
%locus 2 (effector component 1) homozygotes
%B = {'0','3','9','5'};
%locus 3 (effector component 2) homozygotes
%C = {'0','3','9','5'};

A = {'w,r','w,t','r,t','w,r2','r2,t','r,r2'};
B = {'w,w','r,r','r2,r2','t,t'};
C = {'w,w','r,r','r2,r2','t,t'};

delete('Genotypes_group_2_1.txt')

for aIndex = 1:length(A)
    for bIndex = 1:length(B)
        for cIndex = 1:length(C)
  
        fileID = fopen('Genotypes_group_2_1.txt','at');
        fprintf(fileID,[[A{aIndex}, ',', B{bIndex},',',C{cIndex}], '\n']);
        fclose(fileID);
        end
    end
end