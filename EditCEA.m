%% Preparing Configuration
fid = fopen(fullfile('D:\','\ConfigCEA.xlsx'),'wt');
fclose(fid);
clear fid %creats excel configuration file

filename = 'ConfigCEA.xlsx';
A = [12.7 5.02 -98 63.9 0 -.2 56];
xlswrite(filename,A)
%% Prompt
prompt = {'Problem Type:','Pressure Units:'};
title = 'Input';
dims = [1 35];
definput = {'20','hsv'};
answer = inputdlg(prompt,title,dims,definput)

%% Preparing
fid = fopen(fullfile('D:\','test.imp'),'wt');
fprintf(fid,s)
fprintf(fid, sprintf('New message in new line'));
fclose(fid);
clear fid
