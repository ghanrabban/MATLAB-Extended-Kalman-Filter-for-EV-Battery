load 'Samsung_NormalizeData_HWFET'
load 'Samsung_NormalizeData_UDDS'
load 'Samsung_NormalizeData_US06'
%load 'Samsung_NormalizeData_HWFET_NoMod'
%load 'Samsung_NormalizeData_UDDS_NoMod'
%load 'Samsung_NormalizeData_US06_NoMod'

%X_X = cat(2,norm.volt_HWFET,norm.curr_HWFET,norm.temp_HWFET_0deg);
%X_X = cat(2,norm.volt_HWFET,norm.curr_HWFET,norm.temp_HWFET_10deg);
%X_X = cat(2,norm.volt_HWFET,norm.curr_HWFET,norm.temp_HWFET_25deg);
%X_X = cat(2,norm.volt_HWFET,norm.curr_HWFET,norm.temp_HWFET_40deg);
%X_X = cat(2,norm.volt_HWFET,norm.curr_HWFET,norm.temp_HWFET_n10deg);
%X_X = cat(2,norm.volt_HWFET,norm.curr_HWFET,norm.temp_HWFET_n20deg);

%X_X = cat(2,norm.volt_UDDS,norm.curr_UDDS,norm.temp_UDDS_0deg);
%X_X = cat(2,norm.volt_UDDS,norm.curr_UDDS,norm.temp_UDDS_10deg);
%X_X = cat(2,norm.volt_UDDS,norm.curr_UDDS,norm.temp_UDDS_25deg);
%X_X = cat(2,norm.volt_UDDS,norm.curr_UDDS,norm.temp_UDDS_40deg);
%X_X = cat(2,norm.volt_UDDS,norm.curr_UDDS,norm.temp_UDDS_n10deg);
%X_X = cat(2,norm.volt_UDDS,norm.curr_UDDS,norm.temp_UDDS_n20deg);

X_X = cat(2,norm.volt_US06,norm.curr_US06,norm.temp_US06_0deg);
%X_X = cat(2,norm.volt_US06,norm.curr_US06,norm.temp_US06_10deg);
%X_X = cat(2,norm.volt_US06,norm.curr_US06,norm.temp_US06_25deg);
%X_X = cat(2,norm.volt_US06,norm.curr_US06,norm.temp_US06_40deg);
%X_X = cat(2,norm.volt_US06,norm.curr_US06,norm.temp_US06_n10deg);
%X_X = cat(2,norm.volt_US06,norm.curr_US06,norm.temp_US06_n20deg);

%X = transpose(X_X);

nominalCap = 3;
%Measured_SOC = (nominalCap + norm.Ah_HWFET).*100./nominalCap;
%Measured_SOC = (nominalCap + norm.Ah_UDDS).*100./nominalCap;
Measured_SOC = (nominalCap + norm.Ah_US06).*100./nominalCap;
Y_Y = normalize(Measured_SOC,"range");
%Y = transpose(Y_Y);

T = cat(2,X_X,Y_Y);
Tbl = array2table(T,'VariableNames',{'Voltage','Current','Temperature','SOC'});