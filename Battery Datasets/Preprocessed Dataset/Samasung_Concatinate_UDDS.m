load 'Samsung_ResampleData.mat'

%% Concatinate Dataset

conca.volt_HWFET = cat(1,conca.B0_volt_HWFET,conca.B10_volt_HWFET,conca.B25_volt_HWFET,conca.B40_volt_HWFET,conca.B10n_volt_HWFET,conca.B20n_volt_HWFET);
conca.volt_UDDS = cat(1,conca.B0_volt_UDDS,conca.B10_volt_UDDS,conca.B25_volt_UDDS,conca.B40_volt_UDDS,conca.B10n_volt_UDDS,conca.B20n_volt_UDDS);
conca.volt_US06 = cat(1,conca.B0_volt_US06,conca.B10_volt_US06,conca.B25_volt_US06,conca.B40_volt_US06,conca.B10n_volt_US06,conca.B20n_volt_US06);

contrain.volt_UDDS = cat(1,contrain.B0_volt_UDDS,contrain.B10_volt_UDDS,contrain.B25_volt_UDDS,contrain.B40_volt_UDDS,contrain.B10n_volt_UDDS,contrain.B20n_volt_UDDS);

conca.curr_HWFET = cat(1,conca.B0_curr_HWFET,conca.B10_curr_HWFET,conca.B25_curr_HWFET,conca.B40_curr_HWFET,conca.B10n_curr_HWFET,conca.B20n_curr_HWFET);
conca.curr_UDDS = cat(1,conca.B0_curr_UDDS,conca.B10_curr_UDDS,conca.B25_curr_UDDS,conca.B40_curr_UDDS,conca.B10n_curr_UDDS,conca.B20n_curr_UDDS);
conca.curr_US06 = cat(1,conca.B0_curr_US06,conca.B10_curr_US06,conca.B25_curr_US06,conca.B40_curr_US06,conca.B10n_curr_US06,conca.B20n_curr_US06);

contrain.curr_UDDS = cat(1,contrain.B0_curr_UDDS,contrain.B10_curr_UDDS,contrain.B25_curr_UDDS,contrain.B40_curr_UDDS,contrain.B10n_curr_UDDS,contrain.B20n_curr_UDDS);

conca.temp_HWFET_0deg = cat(1,conca.B0_temp_HWFET,conca.B0_temp_HWFET,conca.B0_temp_HWFET,conca.B0_temp_HWFET,conca.B0_temp_HWFET,conca.B0_temp_HWFET);
conca.temp_HWFET_10deg = cat(1,conca.B10_temp_HWFET,conca.B10_temp_HWFET,conca.B10_temp_HWFET,conca.B10_temp_HWFET,conca.B10_temp_HWFET,conca.B10_temp_HWFET);
conca.temp_HWFET_25deg = cat(1,conca.B25_temp_HWFET,conca.B25_temp_HWFET,conca.B25_temp_HWFET,conca.B25_temp_HWFET,conca.B25_temp_HWFET,conca.B25_temp_HWFET);
conca.temp_HWFET_40deg = cat(1,conca.B40_temp_HWFET,conca.B40_temp_HWFET,conca.B40_temp_HWFET,conca.B40_temp_HWFET,conca.B40_temp_HWFET,conca.B40_temp_HWFET);
conca.temp_HWFET_n10deg = cat(1,conca.B10n_temp_HWFET,conca.B10n_temp_HWFET,conca.B10n_temp_HWFET,conca.B10n_temp_HWFET,conca.B10n_temp_HWFET,conca.B10n_temp_HWFET);
conca.temp_HWFET_n20deg = cat(1,conca.B20n_temp_HWFET,conca.B20n_temp_HWFET,conca.B20n_temp_HWFET,conca.B20n_temp_HWFET,conca.B20n_temp_HWFET,conca.B20n_temp_HWFET);

conca.temp_UDDS_0deg = cat(1,conca.B0_temp_UDDS,conca.B0_temp_UDDS,conca.B0_temp_UDDS,conca.B0_temp_UDDS,conca.B0_temp_UDDS,conca.B0_temp_UDDS);
conca.temp_UDDS_10deg = cat(1,conca.B10_temp_UDDS,conca.B10_temp_UDDS,conca.B10_temp_UDDS,conca.B10_temp_UDDS,conca.B10_temp_UDDS,conca.B10_temp_UDDS);
conca.temp_UDDS_25deg = cat(1,conca.B25_temp_UDDS,conca.B25_temp_UDDS,conca.B25_temp_UDDS,conca.B25_temp_UDDS,conca.B25_temp_UDDS,conca.B25_temp_UDDS);
conca.temp_UDDS_40deg = cat(1,conca.B40_temp_UDDS,conca.B40_temp_UDDS,conca.B40_temp_UDDS,conca.B40_temp_UDDS,conca.B40_temp_UDDS,conca.B40_temp_UDDS);
conca.temp_UDDS_n10deg = cat(1,conca.B10n_temp_UDDS,conca.B10n_temp_UDDS,conca.B10n_temp_UDDS,conca.B10n_temp_UDDS,conca.B10n_temp_UDDS,conca.B10n_temp_UDDS);
conca.temp_UDDS_n20deg = cat(1,conca.B20n_temp_UDDS,conca.B20n_temp_UDDS,conca.B20n_temp_UDDS,conca.B20n_temp_UDDS,conca.B20n_temp_UDDS,conca.B20n_temp_UDDS);

conca.temp_US06_0deg = cat(1,conca.B0_temp_US06,conca.B0_temp_US06,conca.B0_temp_US06,conca.B0_temp_US06,conca.B0_temp_US06,conca.B0_temp_US06);
conca.temp_US06_10deg = cat(1,conca.B10_temp_US06,conca.B10_temp_US06,conca.B10_temp_US06,conca.B10_temp_US06,conca.B10_temp_US06,conca.B10_temp_US06);
conca.temp_US06_25deg = cat(1,conca.B25_temp_US06,conca.B25_temp_US06,conca.B25_temp_US06,conca.B25_temp_US06,conca.B25_temp_US06,conca.B25_temp_US06);
conca.temp_US06_40deg = cat(1,conca.B40_temp_US06,conca.B40_temp_US06,conca.B40_temp_US06,conca.B40_temp_US06,conca.B40_temp_US06,conca.B40_temp_US06);
conca.temp_US06_n10deg = cat(1,conca.B10n_temp_US06,conca.B10n_temp_US06,conca.B10n_temp_US06,conca.B10n_temp_US06,conca.B10n_temp_US06,conca.B10n_temp_US06);
conca.temp_US06_n20deg = cat(1,conca.B20n_temp_US06,conca.B20n_temp_US06,conca.B20n_temp_US06,conca.B20n_temp_US06,conca.B20n_temp_US06,conca.B20n_temp_US06);

conca.Ah_HWFET = cat(1,conca.B0_Ah_HWFET,conca.B10_Ah_HWFET,conca.B25_Ah_HWFET,conca.B40_Ah_HWFET,conca.B10n_Ah_HWFET,conca.B20n_Ah_HWFET);
conca.Ah_UDDS = cat(1,conca.B0_Ah_UDDS,conca.B10_Ah_UDDS,conca.B25_Ah_UDDS,conca.B40_Ah_UDDS,conca.B10n_Ah_UDDS,conca.B20n_Ah_UDDS);
conca.Ah_US06 = cat(1,conca.B0_Ah_US06,conca.B10_Ah_US06,conca.B25_Ah_US06,conca.B40_Ah_US06,conca.B10n_Ah_US06,conca.B20n_Ah_US06);
conca.Ah = cat(1,conca.Ah_HWFET,conca.Ah_UDDS,conca.Ah_US06);


%% Normalized Dataset

%norm.volt_UDDS_0 = normalize(smooth.B0_volt_UDDS_golay,"range");
%norm.volt_UDDS_10 = normalize(smooth.B10_volt_UDDS_golay,"range");
%norm.volt_UDDS_25 = normalize(smooth.B25_volt_UDDS_golay,"range");
%norm.volt_UDDS_40 = normalize(smooth.B40_volt_UDDS_golay,"range");
%norm.volt_UDDS_n10 = normalize(smooth.B10n_volt_UDDS_golay,"range");
%norm.volt_UDDS_n20 = normalize(smooth.B20n_volt_UDDS_golay,"range");

%norm.curr_UDDS_0 = normalize(smooth.B0_curr_UDDS_golay,"range");
%norm.curr_UDDS_10 = normalize(smooth.B10_curr_UDDS_golay,"range");
%norm.curr_UDDS_25 = normalize(smooth.B25_curr_UDDS_golay,"range");
%norm.curr_UDDS_40 = normalize(smooth.B40_curr_UDDS_golay,"range");
%norm.curr_UDDS_n10 = normalize(smooth.B10n_curr_UDDS_golay,"range");
%norm.curr_UDDS_n20 = normalize(smooth.B20n_curr_UDDS_golay,"range");

%norm.temp_UDDS_0 = normalize(smooth.B0_temp_UDDS_golay,"range");
%norm.temp_UDDS_10 = normalize(smooth.B10_temp_UDDS_golay,"range");
%norm.temp_UDDS_25 = normalize(smooth.B25_temp_UDDS_golay,"range");
%norm.temp_UDDS_40 = normalize(smooth.B40_temp_UDDS_golay,"range");
%norm.temp_UDDS_n10 = normalize(smooth.B10n_temp_UDDS_golay,"range");
%norm.temp_UDDS_n20 = normalize(smooth.B20n_temp_UDDS_golay,"range");

norm.volt_UDDS_0 = normalize(chop.B0_volt_UDDS,"range");
norm.volt_UDDS_10 = normalize(chop.B10_volt_UDDS,"range");
norm.volt_UDDS_25 = normalize(chop.B25_volt_UDDS,"range");
norm.volt_UDDS_40 = normalize(chop.B40_volt_UDDS,"range");
norm.volt_UDDS_n10 = normalize(chop.B10n_volt_UDDS,"range");
norm.volt_UDDS_n20 = normalize(chop.B20n_volt_UDDS,"range");

norm.curr_UDDS_0 = normalize(chop.B0_curr_UDDS,"range");
norm.curr_UDDS_10 = normalize(chop.B10_curr_UDDS,"range");
norm.curr_UDDS_25 = normalize(chop.B25_curr_UDDS,"range");
norm.curr_UDDS_40 = normalize(chop.B40_curr_UDDS,"range");
norm.curr_UDDS_n10 = normalize(chop.B10n_curr_UDDS,"range");
norm.curr_UDDS_n20 = normalize(chop.B20n_curr_UDDS,"range");

norm.temp_UDDS_0 = normalize(chop.B0_temp_UDDS,"range");
norm.temp_UDDS_10 = normalize(chop.B10_temp_UDDS,"range");
norm.temp_UDDS_25 = normalize(chop.B25_temp_UDDS,"range");
norm.temp_UDDS_40 = normalize(chop.B40_temp_UDDS,"range");
norm.temp_UDDS_n10 = normalize(chop.B10n_temp_UDDS,"range");
norm.temp_UDDS_n20 = normalize(chop.B20n_temp_UDDS,"range");

norm.Ah_UDDS_0 = normalize(chop.B0_Ah_UDDS,"range");
norm.Ah_UDDS_10 = normalize(chop.B10_Ah_UDDS,"range");
norm.Ah_UDDS_25 = normalize(chop.B25_Ah_UDDS,"range");
norm.Ah_UDDS_40 = normalize(chop.B40_Ah_UDDS,"range");
norm.Ah_UDDS_n10 = normalize(chop.B10n_Ah_UDDS,"range");
norm.Ah_UDDS_n20 = normalize(chop.B20n_Ah_UDDS,"range");

norm.Ah_UDDS = normalize(conca.Ah_UDDS,"range");
%norm.volt_UDDS = normalize(conca.volt_UDDS,"range");
%norm.curr_UDDS = normalize(conca.curr_UDDS,"range");
norm.temp_UDDS_0deg = normalize(conca.temp_UDDS_0deg,"range");
norm.temp_UDDS_10deg = normalize(conca.temp_UDDS_10deg,"range");
norm.temp_UDDS_25deg = normalize(conca.temp_UDDS_25deg,"range");
norm.temp_UDDS_40deg = normalize(conca.temp_UDDS_40deg,"range");
norm.temp_UDDS_n10deg = normalize(conca.temp_UDDS_n10deg,"range");
norm.temp_UDDS_n20deg = normalize(conca.temp_UDDS_n20deg,"range");
norm.volt_UDDS = normalize(contrain.volt_UDDS,"range");
norm.curr_UDDS = normalize(contrain.curr_UDDS,"range");