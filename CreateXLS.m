%# output file name
fName = fullfile(pwd, 'file.xls');

%# create Excel COM Server
Excel = actxserver('Excel.Application');
Excel.Visible = true;

%# delete existing file
if exist(fName, 'file'), delete(fName); end

%# create new XLS file
wb = Excel.Workbooks.Add();
wb.Sheets.Item(1).Activate();

%# save XLS file
wb.SaveAs(fName,1);
wb.Close(false);

data=ones(10,4);      %Sample 2-dimensional data
col_header={'Oxidizer','Pressure','X','Y'};     %Row cell array (for column labels)
row_header(1:10,1)={'Time'};     %Column cell array (for row labels)
xlswrite('file.xls',data,'Sheet1','B2');     %Write data
xlswrite('file.xls',col_header,'Sheet1','B1');     %Write column header
xlswrite('file.xls',row_header,'Sheet1','A2');      %Write row header

%# close Excel
Excel.Quit();