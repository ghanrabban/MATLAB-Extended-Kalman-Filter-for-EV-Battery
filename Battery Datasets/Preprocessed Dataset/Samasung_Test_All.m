load 'Samsung_NormalizeData_HWFET'
load 'Samsung_NormalizeData_UDDS'
load 'Samsung_NormalizeData_US06'
%load 'Samsung_NormalizeData_HWFET_NoMod'
%load 'Samsung_NormalizeData_UDDS_NoMod'
%load 'Samsung_NormalizeData_US06_NoMod'

%X_X = cat(2,norm.volt_HWFET_0,norm.curr_HWFET_0,norm.temp_HWFET_0);
%X_X = cat(2,norm.volt_HWFET_10,norm.curr_HWFET_10,norm.temp_HWFET_10);
%X_X = cat(2,norm.volt_HWFET_25,norm.curr_HWFET_25,norm.temp_HWFET_25);
%X_X = cat(2,norm.volt_HWFET_40,norm.curr_HWFET_40,norm.temp_HWFET_40);
%X_X = cat(2,norm.volt_HWFET_n10,norm.curr_HWFET_n10,norm.temp_HWFET_n10);
%X_X = cat(2,norm.volt_HWFET_n20,norm.curr_HWFET_n20,norm.temp_HWFET_n20);

%X_X = cat(2,norm.volt_UDDS_0,norm.curr_UDDS_0,norm.temp_UDDS_0);
%X_X = cat(2,norm.volt_UDDS_10,norm.curr_UDDS_10,norm.temp_UDDS_10);
%X_X = cat(2,norm.volt_UDDS_25,norm.curr_UDDS_25,norm.temp_UDDS_25);
%X_X = cat(2,norm.volt_UDDS_40,norm.curr_UDDS_40,norm.temp_UDDS_40);
%X_X = cat(2,norm.volt_UDDS_n10,norm.curr_UDDS_n10,norm.temp_UDDS_n10);
%X_X = cat(2,norm.volt_UDDS_n20,norm.curr_UDDS_n20,norm.temp_UDDS_n20);

X_X = cat(2,norm.volt_US06_0,norm.curr_US06_0,norm.temp_US06_0);
%X_X = cat(2,norm.volt_US06_10,norm.curr_US06_10,norm.temp_US06_10);
%X_X = cat(2,norm.volt_US06_25,norm.curr_US06_25,norm.temp_US06_25);
%X_X = cat(2,norm.volt_US06_40,norm.curr_US06_40,norm.temp_US06_40);
%X_X = cat(2,norm.volt_US06_n10,norm.curr_US06_n10,norm.temp_US06_n10);
%X_X = cat(2,norm.volt_US06_n20,norm.curr_US06_n20,norm.temp_US06_n20);

X = transpose(X_X);

nominalCap = 3;

%Measured_SOC = (nominalCap + norm.Ah_HWFET_0).*100./nominalCap;
%Measured_SOC = (nominalCap + norm.Ah_HWFET_10).*100./nominalCap;
%Measured_SOC = (nominalCap + norm.Ah_HWFET_25).*100./nominalCap;
%Measured_SOC = (nominalCap + norm.Ah_HWFET_40).*100./nominalCap;
%Measured_SOC = (nominalCap + norm.Ah_HWFET_n10).*100./nominalCap;
%Measured_SOC = (nominalCap + norm.Ah_HWFET_n20).*100./nominalCap;

%Measured_SOC = (nominalCap + norm.Ah_UDDS_0).*100./nominalCap;
%Measured_SOC = (nominalCap + norm.Ah_UDDS_10).*100./nominalCap;
%Measured_SOC = (nominalCap + norm.Ah_UDDS_25).*100./nominalCap;
%Measured_SOC = (nominalCap + norm.Ah_UDDS_40).*100./nominalCap;
%Measured_SOC = (nominalCap + norm.Ah_UDDS_n10).*100./nominalCap;
%Measured_SOC = (nominalCap + norm.Ah_UDDS_n20).*100./nominalCap;

Measured_SOC = (nominalCap + norm.Ah_US06_0).*100./nominalCap;
%Measured_SOC = (nominalCap + norm.Ah_US06_10).*100./nominalCap;
%Measured_SOC = (nominalCap + norm.Ah_US06_25).*100./nominalCap;
%Measured_SOC = (nominalCap + norm.Ah_US06_40).*100./nominalCap;
%Measured_SOC = (nominalCap + norm.Ah_US06_n10).*100./nominalCap;
%Measured_SOC = (nominalCap + norm.Ah_US06_n20).*100./nominalCap;

Y_Y = normalize(Measured_SOC,"range");
Y = transpose(Y_Y);

T = cat(2,X_X,Y_Y);
Tbl = array2table(T,'VariableNames',{'Voltage','Current','Temperature','SOC'});

%%

SOC_HWFET = (nominalCap + norm.Ah_HWFET_0).*100./nominalCap;
SOC_UDDS = (nominalCap + norm.Ah_UDDS_0).*100./nominalCap;
SOC_US06 = (nominalCap + norm.Ah_US06_0).*100./nominalCap;

SOC_HWFET = normalize(SOC_HWFET,"range");
SOC_UDDS = normalize(SOC_UDDS,"range");
SOC_US06 = normalize(SOC_US06,"range");
%chop.B0_time_HWFET = linspace(0,14336,14337);
%chop.B0_time_UDDS = linspace(0,33994,33995);
%chop.B0_time_US06 = linspace(0,8904,8905);
SOC_HWFET(14338:33995) = NaN;
SOC_US06(8906:33995) = NaN;

figure
hold all
plot((chop.B0_time_UDDS/3600),(SOC_HWFET*100),'LineWidth',2)
plot((chop.B0_time_UDDS/3600),(SOC_UDDS*100),'LineWidth',2)
plot((chop.B0_time_UDDS/3600),(SOC_US06*100),'LineWidth',2)
title('Battery Coulomb Counting of HWFET, UDDS, and US06','FontName','Calibri')
legend('HWFET','UDDS','US06','FontName','Calibri')
xlabel('Time (hours)','FontName','Calibri')
ylabel('SOC (%)','FontName','Calibri')
set(gca,'FontName','Calibri')
grid minor
