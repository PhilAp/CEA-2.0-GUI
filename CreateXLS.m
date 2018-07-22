%# output file name
fName = fullfile(pwd, 'file.xls');

%# create Excel COM Server
Excel = actxserver('Excel.Application');
Excel.Visible = false;

%# delete existing file
if exist(fName, 'file'), delete(fName); end

%# create new XLS file
wb = Excel.Workbooks.Add();
wb.Sheets.Item(1).Activate();

%# save XLS file
wb.SaveAs(fName,1);
wb.Close(false);

data=ones(10,4);      %Sample 2-dimensional data
col_header={'problem_type','pressure_unit', 'pressure_val', 'temp_unit, temp_val', 'reactant_amount_unit', 'reactant_temp_unit', 'fuel_name', 'fuel_amount, fuel_temp', 'oxid_name', 'oxid_amount', 'oxid_temp', 'output'};     %Row cell array (for column labels)
xlswrite('file.xls',col_header,'Sheet1','A1');     %Write column header

%# close Excel
Excel.Quit();
