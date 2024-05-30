load 'EKF_Simulation_Results'
load 'FDNN_Simulation_Results'

chop.Measured_SOC_HWFET_0deg = Measured_SOC_HWFET_0deg(1:1800,1);
chop.Measured_SOC_HWFET_10deg = Measured_SOC_HWFET_10deg(1:1800,1);
chop.Measured_SOC_HWFET_25deg = Measured_SOC_HWFET_25deg(1:1800,1);
chop.Measured_SOC_HWFET_40deg = Measured_SOC_HWFET_40deg(1:1800,1);
chop.Measured_SOC_HWFET_n10deg = Measured_SOC_HWFET_n10deg(1:1800,1);
chop.Measured_SOC_HWFET_n20deg = Measured_SOC_HWFET_n20deg(1:1800,1);

chop.SOC_Estimated_HWFET_0deg = SOC_Estimated_HWFET_0deg(1:1800,1);
chop.SOC_Estimated_HWFET_10deg = SOC_Estimated_HWFET_10deg(1:1800,1);
chop.SOC_Estimated_HWFET_25deg = SOC_Estimated_HWFET_25deg(1:1800,1);
chop.SOC_Estimated_HWFET_40deg = SOC_Estimated_HWFET_40deg(1:1800,1);
chop.SOC_Estimated_HWFET_n10deg = SOC_Estimated_HWFET_n10deg(1:1800,1);
chop.SOC_Estimated_HWFET_n20deg = SOC_Estimated_HWFET_n20deg(1:1800,1);

chop.Measured_SOC_UDDS_0deg = Measured_SOC_UDDS_0deg(1:1800,1);
chop.Measured_SOC_UDDS_10deg = Measured_SOC_UDDS_10deg(1:1800,1);
chop.Measured_SOC_UDDS_25deg = Measured_SOC_UDDS_25deg(1:1800,1);
chop.Measured_SOC_UDDS_40deg = Measured_SOC_UDDS_40deg(1:1800,1);
chop.Measured_SOC_UDDS_n10deg = Measured_SOC_UDDS_n10deg(1:1800,1);
chop.Measured_SOC_UDDS_n20deg = Measured_SOC_UDDS_n20deg(1:1800,1);

chop.SOC_Estimated_UDDS_0deg = SOC_Estimated_UDDS_0deg(1:1800,1);
chop.SOC_Estimated_UDDS_10deg = SOC_Estimated_UDDS_10deg(1:1800,1);
chop.SOC_Estimated_UDDS_25deg = SOC_Estimated_UDDS_25deg(1:1800,1);
chop.SOC_Estimated_UDDS_40deg = SOC_Estimated_UDDS_40deg(1:1800,1);
chop.SOC_Estimated_UDDS_n10deg = SOC_Estimated_UDDS_n10deg(1:1800,1);
chop.SOC_Estimated_UDDS_n20deg = SOC_Estimated_UDDS_n20deg(1:1800,1);

chop.Measured_SOC_US06_0deg = Measured_SOC_US06_0deg(1:1800,1);
chop.Measured_SOC_US06_10deg = Measured_SOCUS06_10deg(1:1800,1);
chop.Measured_SOC_US06_25deg = Measured_SOC_US06_25deg(1:1800,1);
chop.Measured_SOC_US06_40deg = Measured_SOC_US06_40deg(1:1800,1);
chop.Measured_SOC_US06_n10deg = Measured_SOC_US06_n10deg(1:1800,1);
chop.Measured_SOC_US06_n20deg = Measured_SOC_US06_n20deg(1:1800,1);

chop.SOC_Estimated_US06_0deg = SOC_Estimated_US06_0deg(1:1800,1);
chop.SOC_Estimated_US06_10deg = SOC_Estimated_US06_10deg(1:1800,1);
chop.SOC_Estimated_US06_25deg = SOC_Estimated_US06_25deg(1:1800,1);
chop.SOC_Estimated_US06_40deg = SOC_Estimated_US06_40deg(1:1800,1);
chop.SOC_Estimated_US06_n10deg = SOC_Estimated_US06_n10deg(1:1800,1);
chop.SOC_Estimated_US06_n20deg = SOC_Estimated_US06_n20deg(1:1800,1);

chop.Error_Test_0degC_HWFET = Error_Test_0degC_HWFET(1,1:1800);
chop.Error_Test_10degC_HWFET = Error_Test_10degC_HWFET(1,1:1800);
chop.Error_Test_25degC_HWFET = Error_Test_25degC_HWFET(1,1:1800);
chop.Error_Test_40degC_HWFET = Error_Test_40degC_HWFET(1,1:1800);
chop.Error_Test_n10degC_HWFET = Error_Test_n10degC_HWFET(1,1:1800);
chop.Error_Test_n20degC_HWFET = Error_Test_n20degC_HWFET(1,1:1800);

chop.Error_Test_0degC_UDDS = Error_Test_0degC_UDDS(1,1:1800);
chop.Error_Test_10degC_UDDS = Error_Test_10degC_UDDS(1,1:1800);
chop.Error_Test_25degC_UDDS = Error_Test_25degC_UDDS(1,1:1800);
chop.Error_Test_40degC_UDDS = Error_Test_40degC_UDDS(1,1:1800);
chop.Error_Test_n10degC_UDDS = Error_Test_n10degC_UDDS(1,1:1800);
chop.Error_Test_n20degC_UDDS = Error_Test_n20degC_UDDS(1,1:1800);

chop.Error_Test_0degC_US06 = Error_Test_0degC_US06(1,1:1800);
chop.Error_Test_10degC_US06 = Error_Test_10degC_US06(1,1:1800);
chop.Error_Test_25degC_US06 = Error_Test_25degC_US06(1,1:1800);
chop.Error_Test_40degC_US06 = Error_Test_40degC_US06(1,1:1800);
chop.Error_Test_n10degC_US06 = Error_Test_n10degC_US06(1,1:1800);
chop.Error_Test_n20degC_US06 = Error_Test_n20degC_US06(1,1:1800);

RMSE_EKF.HWFET_0deg_0    = sqrt((mean(((chop.Measured_SOC_HWFET_0deg*100) - (chop.SOC_Estimated_HWFET_0deg*100)).^2)));
RMSE_EKF.HWFET_10deg_0    = sqrt((mean(((chop.Measured_SOC_HWFET_10deg*100) - (chop.SOC_Estimated_HWFET_10deg*100)).^2)));
RMSE_EKF.HWFET_25deg_0    = sqrt((mean(((chop.Measured_SOC_HWFET_25deg*100) - (chop.SOC_Estimated_HWFET_25deg*100)).^2)));
RMSE_EKF.HWFET_40deg_0    = sqrt((mean(((chop.Measured_SOC_HWFET_40deg*100) - (chop.SOC_Estimated_HWFET_40deg*100)).^2)));
RMSE_EKF.HWFET_n10deg_0    = sqrt((mean(((chop.Measured_SOC_HWFET_n10deg*100) - (chop.SOC_Estimated_HWFET_n10deg*100)).^2)));
RMSE_EKF.HWFET_n20deg_0    = sqrt((mean(((chop.Measured_SOC_HWFET_n20deg*100) - (chop.SOC_Estimated_HWFET_n20deg*100)).^2)));

RMSE_EKF.UDDS_0deg_0    = sqrt((mean(((chop.Measured_SOC_UDDS_0deg*100) - (chop.SOC_Estimated_UDDS_0deg*100)).^2)));
RMSE_EKF.UDDS_10deg_0    = sqrt((mean(((chop.Measured_SOC_UDDS_10deg*100) - (chop.SOC_Estimated_UDDS_10deg*100)).^2)));
RMSE_EKF.UDDS_25deg_0    = sqrt((mean(((chop.Measured_SOC_UDDS_25deg*100) - (chop.SOC_Estimated_UDDS_25deg*100)).^2)));
RMSE_EKF.UDDS_40deg_0    = sqrt((mean(((chop.Measured_SOC_UDDS_40deg*100) - (chop.SOC_Estimated_UDDS_40deg*100)).^2)));
RMSE_EKF.UDDS_n10deg_0    = sqrt((mean(((chop.Measured_SOC_UDDS_n10deg*100) - (chop.SOC_Estimated_UDDS_n10deg*100)).^2)));
RMSE_EKF.UDDS_n20deg_0    = sqrt((mean(((chop.Measured_SOC_UDDS_n20deg*100) - (chop.SOC_Estimated_UDDS_n20deg*100)).^2)));

RMSE_EKF.US06_0deg_0    = sqrt((mean(((chop.Measured_SOC_US06_0deg*100) - (chop.SOC_Estimated_US06_0deg*100)).^2)));
RMSE_EKF.US06_10deg_0    = sqrt((mean(((chop.Measured_SOC_US06_10deg*100) - (chop.SOC_Estimated_US06_10deg*100)).^2)));
RMSE_EKF.US06_25deg_0    = sqrt((mean(((chop.Measured_SOC_US06_25deg*100) - (chop.SOC_Estimated_US06_25deg*100)).^2)));
RMSE_EKF.US06_40deg_0    = sqrt((mean(((chop.Measured_SOC_US06_40deg*100) - (chop.SOC_Estimated_US06_40deg*100)).^2)));
RMSE_EKF.US06_n10deg_0    = sqrt((mean(((chop.Measured_SOC_US06_n10deg*100) - (chop.SOC_Estimated_US06_n10deg*100)).^2)));
RMSE_EKF.US06_n20deg_0    = sqrt((mean(((chop.Measured_SOC_US06_n20deg*100) - (chop.SOC_Estimated_US06_n20deg*100)).^2)));

RMSE_FNN.HWFET_0deg_0    = sqrt((mean((chop.Error_Test_0degC_HWFET*100).^2)));
RMSE_FNN.HWFET_10deg_0    = sqrt((mean((chop.Error_Test_10degC_HWFET*100).^2)));
RMSE_FNN.HWFET_25deg_0    = sqrt((mean((chop.Error_Test_25degC_HWFET*100).^2)));
RMSE_FNN.HWFET_40deg_0    = sqrt((mean((chop.Error_Test_40degC_HWFET*100).^2)));
RMSE_FNN.HWFET_n10deg_0    = sqrt((mean((chop.Error_Test_n10degC_HWFET*100).^2)));
RMSE_FNN.HWFET_n20deg_0    = sqrt((mean((chop.Error_Test_n20degC_HWFET*100).^2)));

RMSE_FNN.UDDS_0deg_0    = sqrt((mean((chop.Error_Test_0degC_UDDS*100).^2)));
RMSE_FNN.UDDS_10deg_0    = sqrt((mean((chop.Error_Test_10degC_UDDS*100).^2)));
RMSE_FNN.UDDS_25deg_0    = sqrt((mean((chop.Error_Test_25degC_UDDS*100).^2)));
RMSE_FNN.UDDS_40deg_0    = sqrt((mean((chop.Error_Test_40degC_UDDS*100).^2)));
RMSE_FNN.UDDS_n10deg_0    = sqrt((mean((chop.Error_Test_n10degC_UDDS*100).^2)));
RMSE_FNN.UDDS_n20deg_0    = sqrt((mean((chop.Error_Test_n20degC_UDDS*100).^2)));

RMSE_FNN.US06_0deg_0    = sqrt((mean((chop.Error_Test_0degC_US06*100).^2)));
RMSE_FNN.US06_10deg_0    = sqrt((mean((chop.Error_Test_10degC_US06*100).^2)));
RMSE_FNN.US06_25deg_0    = sqrt((mean((chop.Error_Test_25degC_US06*100).^2)));
RMSE_FNN.US06_40deg_0    = sqrt((mean((chop.Error_Test_40degC_US06*100).^2)));
RMSE_FNN.US06_n10deg_0    = sqrt((mean((chop.Error_Test_n10degC_US06*100).^2)));
RMSE_FNN.US06_n20deg_0    = sqrt((mean((chop.Error_Test_n20degC_US06*100).^2)));

RMSE_HWFET_Y = [RMSE_FNN.HWFET_n20deg_0 RMSE_EKF.HWFET_n20deg_0; RMSE_FNN.HWFET_n10deg_0 RMSE_EKF.HWFET_n10deg_0; 
                RMSE_FNN.HWFET_0deg_0 RMSE_EKF.HWFET_0deg_0; RMSE_FNN.HWFET_10deg_0 RMSE_EKF.HWFET_10deg_0; 
                RMSE_FNN.HWFET_25deg_0 RMSE_EKF.HWFET_25deg_0; RMSE_FNN.HWFET_40deg_0 RMSE_EKF.HWFET_40deg_0];
RMSE_HWFET_X = [-20; -10; 0; 10; 25; 40];

RMSE_UDDS_Y = [RMSE_FNN.UDDS_n20deg_0 RMSE_EKF.UDDS_n20deg_0; RMSE_FNN.UDDS_n10deg_0 RMSE_EKF.UDDS_n10deg_0; 
               RMSE_FNN.UDDS_0deg_0 RMSE_EKF.UDDS_0deg_0; RMSE_FNN.UDDS_10deg_0 RMSE_EKF.UDDS_10deg_0; 
               RMSE_FNN.UDDS_25deg_0 RMSE_EKF.UDDS_25deg_0; RMSE_FNN.UDDS_40deg_0 RMSE_EKF.UDDS_40deg_0];
RMSE_UDDS_X = [-20; -10; 0; 10; 25; 40];

RMSE_US06_Y = [RMSE_FNN.US06_n20deg_0 RMSE_EKF.US06_n20deg_0; RMSE_FNN.US06_n10deg_0 RMSE_EKF.US06_n10deg_0; 
               RMSE_FNN.US06_0deg_0 RMSE_EKF.US06_0deg_0; RMSE_FNN.US06_10deg_0 RMSE_EKF.US06_10deg_0; 
               RMSE_FNN.US06_25deg_0 RMSE_EKF.US06_25deg_0; RMSE_FNN.US06_40deg_0 RMSE_EKF.US06_40deg_0];
RMSE_US06_X = [-20; -10; 0; 10; 25; 40];

figure
bar(RMSE_HWFET_X,RMSE_HWFET_Y)
legend(["FDNN" "EKF"])
title('HWFET RMSE at First 30 Minutes of Estimation & Prediction')
xlabel('Temperature (°C)')
ylabel('RMSE (%)')
set(gca,'FontName','Calibri')
set(findall(gcf,'type','axes'),'fontsize',12)
set(findall(gcf,'type','text'),'fontSize',12)
grid minor
figure
bar(RMSE_UDDS_X,RMSE_UDDS_Y)
legend(["FDNN" "EKF"])
title('UDDS RMSE at First 30 Minutes of Estimation & Prediction')
xlabel('Temperature (°C)')
ylabel('RMSE (%)')
set(gca,'FontName','Calibri')
set(findall(gcf,'type','axes'),'fontsize',12)
set(findall(gcf,'type','text'),'fontSize',12) 
grid minor
figure
bar(RMSE_US06_X,RMSE_US06_Y)
legend(["FDNN" "EKF"])
title('US06 RMSE at First 30 Minutes of Estimation & Prediction')
xlabel('Temperature (°C)')
ylabel('RMSE (%)')
set(gca,'FontName','Calibri')
set(findall(gcf,'type','axes'),'fontsize',12)
set(findall(gcf,'type','text'),'fontSize',12) 
grid minor