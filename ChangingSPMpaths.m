%% Change path listed in SPM files

conPaths=ls('/u/project/sanscn/data/NP_STUDY/dartel/data/NP_*/analysis/WH_*/SPM.mat');  % Finds all the SPM files from the NP study involving Why How
conPaths=strsplit(conPaths,'\n');                                                       % Splits the long character chain into each individual file
conPaths(end)=[];                                                                       % Gets rid of the last item which is always blank

for ii=1:length(conPaths)                                               
    spm_changepath(conPaths{ii},'/space/raid8/data/lieber/','/u/project/sanscn/data/'); % Uses spm function to take the SPM file and changes only part of the old file name to the new file name
end