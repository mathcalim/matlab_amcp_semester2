clc
clear

xIsName = 'fileExcel.xlsx';
sheetName = 'Data';
T_in = readtable(xIsName,'readVariableNames',1,'Sheet',sheetName,'TextType','string');
disp(T_in);
T_out = [];
for i = 1:size(T_in,1)
    if T_in{i,2} == "Исполнитель"
        disp(T_in{i,1});
        T_out = [T_out;T_in(i,:)];
    end
end
disp(T_out);
newFileName = 'fileExcel2.xlsx';
writetable(T_out,newFileName,'Sheet',1,'Range','A1')