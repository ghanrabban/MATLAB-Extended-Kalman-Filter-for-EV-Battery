%% Normalized Data

load 'Samsung_RawData.mat'

%% resampling data time
chop.B40_time_HWFET = linspace(0,14336,14337);
chop.B40_time_UDDS = linspace(0,33994,33995);
chop.B40_time_US06 = linspace(0,8904,8905);

conca.B40_time_HWFET = linspace(0,28673,28674);
conca.B40_time_UDDS = linspace(0,67989,67990);
conca.B40_time_US06 = linspace(0,17809,17810);

%% resampling data voltage
raw.B40_volt_HWFET = resample(HWFET_40degC_IN21700.Voltage,1,1);
raw.B40_volt_UDDS = resample(UDDS_40degC_IN21700.Voltage,1,1);
raw.B40_volt_US06 = resample(US06_40degC_IN21700.Voltage,1,1);
% chopping data
chop.B40_volt_HWFET = raw.B40_volt_HWFET(1:14337,1);
smooth.B40_volt_HWFET_golay = smoothdata(chop.B40_volt_HWFET,"sgolay",2500);
smooth.B40_volt_HWFET_gauss = smoothdata(chop.B40_volt_HWFET,"gaussian",500);
choprand.B40_volt_HWFET = awgn(smooth.B40_volt_HWFET_gauss,30,'measured');
chopflip.B40_volt_HWFET = flipud(chop.B40_volt_HWFET);
chop.B40_volt_UDDS = raw.B40_volt_UDDS(1:33995,1);
smooth.B40_volt_UDDS_golay = smoothdata(chop.B40_volt_UDDS,"sgolay",3500);
smooth.B40_volt_UDDS_gauss = smoothdata(chop.B40_volt_UDDS,"gaussian",500);
choprand.B40_volt_UDDS = awgn(smooth.B40_volt_UDDS_gauss,30,'measured');
chopflip.B40_volt_UDDS = flipud(chop.B40_volt_UDDS);
chop.B40_volt_US06 = raw.B40_volt_US06(1:8905,1);
smooth.B40_volt_US06_golay = smoothdata(chop.B40_volt_US06,"sgolay",2000);
smooth.B40_volt_US06_gauss = smoothdata(chop.B40_volt_US06,"gaussian",500);
choprand.B40_volt_US06 = awgn(smooth.B40_volt_US06_gauss,30,'measured');
chopflip.B40_volt_US06 = flipud(chop.B40_volt_US06);
% concatinate data
conca.B40_volt_HWFET = vertcat(smooth.B40_volt_HWFET_golay,smooth.B40_volt_HWFET_golay);
conca.B40_volt_UDDS = vertcat(smooth.B40_volt_UDDS_golay,smooth.B40_volt_UDDS_golay);
conca.B40_volt_US06 = vertcat(smooth.B40_volt_US06_golay,smooth.B40_volt_US06_golay);

contrain.B40_volt_HWFET = vertcat(chop.B40_volt_HWFET,chop.B40_volt_HWFET);
contrain.B40_volt_UDDS = vertcat(chop.B40_volt_UDDS,chop.B40_volt_UDDS);
contrain.B40_volt_US06 = vertcat(chop.B40_volt_US06,chop.B40_volt_US06);

%% resampling data current
raw.B40_curr_HWFET = resample(HWFET_40degC_IN21700.Current,1,1);
raw.B40_curr_UDDS = resample(UDDS_40degC_IN21700.Current,1,1);
raw.B40_curr_US06 = resample(US06_40degC_IN21700.Current,1,1);
% chopping data
chop.B40_curr_HWFET = raw.B40_curr_HWFET(1:14337,1);
smooth.B40_curr_HWFET_golay = smoothdata(chop.B40_curr_HWFET,"sgolay",5000);
smooth.B40_curr_HWFET_gauss = smoothdata(chop.B40_curr_HWFET,"gaussian",5000);
choprand.B40_curr_HWFET = awgn(smooth.B40_curr_HWFET_gauss,40,'measured');
chopflip.B40_curr_HWFET = flipud(chop.B40_curr_HWFET);
chop.B40_curr_UDDS = raw.B40_curr_UDDS(1:33995,1);
smooth.B40_curr_UDDS_golay = smoothdata(chop.B40_curr_UDDS,"sgolay",6000);
smooth.B40_curr_UDDS_gauss = smoothdata(chop.B40_curr_UDDS,"gaussian",6000);
choprand.B40_curr_UDDS = awgn(smooth.B40_curr_UDDS_gauss,40,'measured');
chopflip.B40_curr_UDDS = flipud(chop.B40_curr_UDDS);
chop.B40_curr_US06 = raw.B40_curr_US06(1:8905,1);
smooth.B40_curr_US06_golay = smoothdata(chop.B40_curr_US06,"sgolay",5000);
smooth.B40_curr_US06_gauss = smoothdata(chop.B40_curr_US06,"gaussian",5000);
choprand.B40_curr_US06 = awgn(smooth.B40_curr_US06_gauss,40,'measured');
chopflip.B40_curr_US06 = flipud(chop.B40_curr_US06);
% concatinate data
conca.B40_curr_HWFET = vertcat(smooth.B40_curr_HWFET_golay,smooth.B40_curr_HWFET_golay);
conca.B40_curr_UDDS = vertcat(smooth.B40_curr_UDDS_golay,smooth.B40_curr_UDDS_golay);
conca.B40_curr_US06 = vertcat(smooth.B40_curr_US06_golay,smooth.B40_curr_US06_golay);

contrain.B40_curr_HWFET = vertcat(chop.B40_curr_HWFET,chop.B40_curr_HWFET);
contrain.B40_curr_UDDS = vertcat(chop.B40_curr_UDDS,chop.B40_curr_UDDS);
contrain.B40_curr_US06 = vertcat(chop.B40_curr_US06,chop.B40_curr_US06);

%% resampling data temperature
raw.B40_temp_HWFET = resample(HWFET_40degC_IN21700.Battery_Temp_degC,1,1);
raw.B40_temp_UDDS = resample(UDDS_40degC_IN21700.Battery_Temp_degC,1,1);
raw.B40_temp_US06 = resample(US06_40degC_IN21700.Battery_Temp_degC,1,1);
% chopping data
chop.B40_temp_HWFET = raw.B40_temp_HWFET(1:14337,1);
smooth.B40_temp_HWFET_golay = smoothdata(chop.B40_temp_HWFET,"sgolay",1000);
smooth.B40_temp_HWFET_gauss = smoothdata(chop.B40_temp_HWFET,"gaussian",1000);
choprand.B40_temp_HWFET = awgn(smooth.B40_temp_HWFET_gauss,20,'measured');
chopflip.B40_temp_HWFET = flipud(chop.B40_temp_HWFET);
chop.B40_temp_UDDS = raw.B40_temp_UDDS(1:33995,1);
smooth.B40_temp_UDDS_golay = smoothdata(chop.B40_temp_UDDS,"sgolay",1000);
smooth.B40_temp_UDDS_gauss = smoothdata(chop.B40_temp_UDDS,"gaussian",500);
choprand.B40_temp_UDDS = awgn(smooth.B40_temp_UDDS_gauss,20,'measured');
chopflip.B40_temp_UDDS = flipud(chop.B40_temp_UDDS);
chop.B40_temp_US06 = raw.B40_temp_US06(1:8905,1);
smooth.B40_temp_US06_golay = smoothdata(chop.B40_temp_US06,"sgolay",1000);
smooth.B40_temp_US06_gauss = smoothdata(chop.B40_temp_US06,"gaussian",500);
choprand.B40_temp_US06 = awgn(smooth.B40_temp_US06_gauss,20,'measured');
chopflip.B40_temp_US06 = flipud(chop.B40_temp_US06);
% concatinate data
conca.B40_temp_HWFET = vertcat(smooth.B40_temp_HWFET_golay,smooth.B40_temp_HWFET_golay);
conca.B40_temp_UDDS = vertcat(smooth.B40_temp_UDDS_golay,smooth.B40_temp_UDDS_golay);
conca.B40_temp_US06 = vertcat(smooth.B40_temp_US06_golay,smooth.B40_temp_US06_golay);

contrain.B40_temp_HWFET = vertcat(chop.B40_temp_HWFET,chop.B40_temp_HWFET);
contrain.B40_temp_UDDS = vertcat(chop.B40_temp_UDDS,chop.B40_temp_UDDS);
contrain.B40_temp_US06 = vertcat(chop.B40_temp_US06,chop.B40_temp_US06);

%% resampling data capacity
raw.B40_Ah_HWFET = resample(HWFET_40degC_IN21700.Ah,1,1);
raw.B40_Ah_UDDS = resample(UDDS_40degC_IN21700.Ah,1,1);
raw.B40_Ah_US06 = resample(US06_40degC_IN21700.Ah,1,1);
% chopping data
chop.B40_Ah_HWFET = raw.B40_Ah_HWFET(1:14337,1);
chopflip.B40_Ah_HWFET = flipud(chop.B40_Ah_HWFET);
chop.B40_Ah_UDDS = raw.B40_Ah_UDDS(1:33995,1);
chopflip.B40_Ah_UDDS = flipud(chop.B40_Ah_UDDS);
chop.B40_Ah_US06 = raw.B40_Ah_US06(1:8905,1);
chopflip.B40_Ah_US06 = flipud(chop.B40_Ah_US06);
% concatinate data
conca.B40_Ah_HWFET = vertcat(chop.B40_Ah_HWFET,chop.B40_Ah_HWFET);
conca.B40_Ah_UDDS = vertcat(chop.B40_Ah_UDDS,chop.B40_Ah_UDDS);
conca.B40_Ah_US06 = vertcat(chop.B40_Ah_US06,chop.B40_Ah_US06);

%%

figure
hold all
scatter((chop.B40_time_HWFET/3600),chop.B40_volt_HWFET,".")
plot((chop.B40_time_HWFET/3600),smooth.B40_volt_HWFET_golay,'LineWidth',4)
plot((chop.B40_time_HWFET/3600),smooth.B40_volt_HWFET_gauss,'LineWidth',4)
grid on
title('Voltage Dataset Sample at 0°C')
legend(["Raw data" "Smooth S-Golay" "Smooth Gauss"])
xlabel('Time (hours)')
ylabel('Voltage (Volt)')

figure
hold all
scatter((chop.B40_time_HWFET/3600),chop.B40_curr_HWFET,".")
plot((chop.B40_time_HWFET/3600),smooth.B40_curr_HWFET_golay,'LineWidth',4)
plot((chop.B40_time_HWFET/3600),smooth.B40_curr_HWFET_gauss,'LineWidth',4)
grid on
title('Current Dataset Sample at 0°C')
legend(["Raw data" "Smooth S-Golay" "Smooth Gauss"])
xlabel('Time (hours)')
ylabel('Discharge Current (Ampere)')

figure
hold all
scatter((chop.B40_time_HWFET/3600),chop.B40_temp_HWFET,".")
plot((chop.B40_time_HWFET/3600),smooth.B40_temp_HWFET_golay,'LineWidth',2)
plot((chop.B40_time_HWFET/3600),smooth.B40_temp_HWFET_gauss,'LineWidth',2)
grid on
title('Temperature Dataset Sample at 0°C')
legend(["Raw data" "Smooth S-Golay" "Smooth Gauss"])
xlabel('Time (hours)')
ylabel('Temperature (°C)')