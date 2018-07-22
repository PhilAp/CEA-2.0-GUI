%% Preparing
s = sprintf('New message in new line\n');
fid = fopen(fullfile('D:\','test.imp'),'wt');
fprintf(fid,s)
fprintf(fid, sprintf('\nNew message in new line'));
fclose(fid);
clear fid
%% Reading
fid = fopen('D:\test.imp','r');
f = textscan(fid,'%s','Delimiter','\n');
txt = f{:};

%% manipulation
txt = regexprep(txt,'^function','\<FUNCTION\>')
txt = regexprep(txt,'path','\<PATH\>')
txt = regexprep(txt,'(.*)','$1\n');
txt = [txt{:}];
fclose(fid);
%% writing
fid = fopen('D:\test.imp','w');
fprintf(fid,txt)
fclose(fid);
