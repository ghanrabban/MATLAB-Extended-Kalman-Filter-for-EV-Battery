load 'EKF_Simulation_Results'
load 'FDNN_Simulation_Results'

RecordingTime_HWFET = linspace(0,14336,14337);
RecordingTime_UDDS = linspace(0,33994,33995);
RecordingTime_US06 = linspace(0,8904,8905);

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_HWFET/3600),(Measured_SOC_HWFET_NoMod*100),"green",'LineWidth',2);
plot ((RecordingTime_HWFET/3600),(SOC_Estimated_HWFET_NoMod*100),"red",'LineWidth',1.5);
plot((RecordingTime_HWFET/3600),(Y_Pred_NoMod_HWFET*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('SOC No Modification of HWFET Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_HWFET/3600),(SOC_Estimated_HWFET_NoMod*100)-(Measured_SOC_HWFET_NoMod*100),"red",'LineWidth',1.5);
plot((RecordingTime_HWFET/3600),(Error_Test_NoMod_HWFET*100),"blue",'LineWidth',1.5);
legend('Estimated EKF','Predicted FDNN');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_US06/3600),(Measured_SOC_US06_NoMod*100),"green",'LineWidth',2);
plot ((RecordingTime_US06/3600),(SOC_Estimated_US06_NoMod*100),"red",'LineWidth',1.5);
plot((RecordingTime_US06/3600),(Y_Pred_NoMod_US06*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('SOC No Modofication of US06 Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_US06/3600),(SOC_Estimated_US06_NoMod*100)-(Measured_SOC_US06_NoMod*100),"red",'LineWidth',1.5);
plot((RecordingTime_US06/3600),(Error_Test_NoMod_US06*100),"blue",'LineWidth',1.5);
legend('Estimated EKF','Predicted FDNN');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_UDDS/3600),(Measured_SOC_UDDS_NoMod*100),"green",'LineWidth',2);
plot ((RecordingTime_UDDS/3600),(SOC_Estimated_UDDS_NoMod*100),"red",'LineWidth',1.5);
plot((RecordingTime_UDDS/3600),(Y_Pred_NoMod_UDDS*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('SOC No Modofication of UDDS Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_UDDS/3600),(SOC_Estimated_UDDS_NoMod*100)-(Measured_SOC_UDDS_NoMod*100),"red",'LineWidth',1.5);
plot((RecordingTime_UDDS/3600),(Error_Test_NoMod_UDDS*100),"blue",'LineWidth',1.5);
legend('Estimated EKF','Predicted FDNN');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_HWFET/3600),(Measured_SOC_HWFET_0deg*100),"green",'LineWidth',2);
plot ((RecordingTime_HWFET/3600),(SOC_Estimated_HWFET_0deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_HWFET/3600),(Y_Pred_0degC_HWFET*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('SOC at 0°C of HWFET Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_HWFET/3600),(SOC_Estimated_HWFET_0deg*100)-(Measured_SOC_HWFET_0deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_HWFET/3600),(Error_Test_0degC_HWFET*100),"blue",'LineWidth',1.5);
legend('Estimated EKF','Predicted FDNN');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_HWFET/3600),(Measured_SOC_HWFET_10deg*100),"green",'LineWidth',2);
plot ((RecordingTime_HWFET/3600),(SOC_Estimated_HWFET_10deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_HWFET/3600),(Y_Pred_10degC_HWFET*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('SOC at 10°C of HWFET Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_HWFET/3600),(SOC_Estimated_HWFET_10deg*100)-(Measured_SOC_HWFET_10deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_HWFET/3600),(Error_Test_10degC_HWFET*100),"blue",'LineWidth',1.5);
legend('Estimated EKF','Predicted FDNN');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_HWFET/3600),(Measured_SOC_HWFET_25deg*100),"green",'LineWidth',2);
plot ((RecordingTime_HWFET/3600),(SOC_Estimated_HWFET_25deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_HWFET/3600),(Y_Pred_25degC_HWFET*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('SOC at 25°C of HWFET Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_HWFET/3600),(SOC_Estimated_HWFET_25deg*100)-(Measured_SOC_HWFET_25deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_HWFET/3600),(Error_Test_25degC_HWFET*100),"blue",'LineWidth',1.5);
legend('Estimated EKF','Predicted FDNN');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_HWFET/3600),(Measured_SOC_HWFET_40deg*100),"green",'LineWidth',2);
plot ((RecordingTime_HWFET/3600),(SOC_Estimated_HWFET_40deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_HWFET/3600),(Y_Pred_40degC_HWFET*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('SOC at 40°C of HWFET Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_HWFET/3600),(SOC_Estimated_HWFET_40deg*100)-(Measured_SOC_HWFET_40deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_HWFET/3600),(Error_Test_40degC_HWFET*100),"blue",'LineWidth',1.5);
legend('Estimated EKF','Predicted FDNN');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_HWFET/3600),(Measured_SOC_HWFET_n10deg*100),"green",'LineWidth',2);
plot ((RecordingTime_HWFET/3600),(SOC_Estimated_HWFET_n10deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_HWFET/3600),(Y_Pred_n10degC_HWFET*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('SOC at -10°C of HWFET Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_HWFET/3600),(SOC_Estimated_HWFET_n10deg*100)-(Measured_SOC_HWFET_n10deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_HWFET/3600),(Error_Test_n10degC_HWFET*100),"blue",'LineWidth',1.5);
legend('Estimated EKF','Predicted FDNN');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_HWFET/3600),(Measured_SOC_HWFET_n20deg*100),"green",'LineWidth',2);
plot ((RecordingTime_HWFET/3600),(SOC_Estimated_HWFET_n20deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_HWFET/3600),(Y_Pred_n20degC_HWFET*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('SOC at -20°C of HWFET Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_HWFET/3600),(SOC_Estimated_HWFET_n20deg*100)-(Measured_SOC_HWFET_n20deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_HWFET/3600),(Error_Test_n20degC_HWFET*100),"blue",'LineWidth',1.5);
legend('Estimated EKF','Predicted FDNN');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_UDDS/3600),(Measured_SOC_UDDS_0deg*100),"green",'LineWidth',2);
plot ((RecordingTime_UDDS/3600),(SOC_Estimated_UDDS_0deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_UDDS/3600),(Y_Pred_0degC_UDDS*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('SOC at 0°C of UDDS Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_UDDS/3600),(SOC_Estimated_UDDS_0deg*100)-(Measured_SOC_UDDS_0deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_UDDS/3600),(Error_Test_0degC_UDDS*100),"blue",'LineWidth',1.5);
legend('Estimated EKF','Predicted FDNN');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_UDDS/3600),(Measured_SOC_UDDS_10deg*100),"green",'LineWidth',2);
plot ((RecordingTime_UDDS/3600),(SOC_Estimated_UDDS_10deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_UDDS/3600),(Y_Pred_10degC_UDDS*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('SOC at 10°C of UDDS Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_UDDS/3600),(SOC_Estimated_UDDS_10deg*100)-(Measured_SOC_UDDS_10deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_UDDS/3600),(Error_Test_10degC_UDDS*100),"blue",'LineWidth',1.5);
legend('Estimated EKF','Predicted FDNN');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_UDDS/3600),(Measured_SOC_UDDS_25deg*100),"green",'LineWidth',2);
plot ((RecordingTime_UDDS/3600),(SOC_Estimated_UDDS_25deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_UDDS/3600),(Y_Pred_25degC_UDDS*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('SOC at 25°C of UDDS Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_UDDS/3600),(SOC_Estimated_UDDS_25deg*100)-(Measured_SOC_UDDS_25deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_UDDS/3600),(Error_Test_25degC_UDDS*100),"blue",'LineWidth',1.5);
legend('Estimated EKF','Predicted FDNN');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_UDDS/3600),(Measured_SOC_UDDS_40deg*100),"green",'LineWidth',2);
plot ((RecordingTime_UDDS/3600),(SOC_Estimated_UDDS_40deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_UDDS/3600),(Y_Pred_40degC_UDDS*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('SOC at 40°C of UDDS Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_UDDS/3600),(SOC_Estimated_UDDS_40deg*100)-(Measured_SOC_UDDS_40deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_UDDS/3600),(Error_Test_40degC_UDDS*100),"blue",'LineWidth',1.5);
legend('Estimated EKF','Predicted FDNN');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_UDDS/3600),(Measured_SOC_UDDS_n10deg*100),"green",'LineWidth',2);
plot ((RecordingTime_UDDS/3600),(SOC_Estimated_UDDS_n10deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_UDDS/3600),(Y_Pred_n10degC_UDDS*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('SOC at -10°C of UDDS Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_UDDS/3600),(SOC_Estimated_UDDS_n10deg*100)-(Measured_SOC_UDDS_n10deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_UDDS/3600),(Error_Test_n10degC_UDDS*100),"blue",'LineWidth',1.5);
legend('Estimated EKF','Predicted FDNN');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_UDDS/3600),(Measured_SOC_UDDS_n20deg*100),"green",'LineWidth',2);
plot ((RecordingTime_UDDS/3600),(SOC_Estimated_UDDS_n20deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_UDDS/3600),(Y_Pred_n20degC_UDDS*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('SOC at -20°C of UDDS Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_UDDS/3600),(SOC_Estimated_UDDS_n20deg*100)-(Measured_SOC_UDDS_n20deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_UDDS/3600),(Error_Test_n20degC_UDDS*100),"blue",'LineWidth',1.5);
legend('Estimated EKF','Predicted FDNN');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_US06/3600),(Measured_SOC_US06_0deg*100),"green",'LineWidth',2);
plot ((RecordingTime_US06/3600),(SOC_Estimated_US06_0deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_US06/3600),(Y_Pred_0degC_US06*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('SOC at 0°C of US06 Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_US06/3600),(SOC_Estimated_US06_0deg*100)-(Measured_SOC_US06_0deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_US06/3600),(Error_Test_0degC_US06*100),"blue",'LineWidth',1.5);
legend('Estimated EKF','Predicted FDNN');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_US06/3600),(Measured_SOCUS06_10deg*100),"green",'LineWidth',2);
plot ((RecordingTime_US06/3600),(SOC_Estimated_US06_10deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_US06/3600),(Y_Pred_10degC_US06*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('SOC at 10°C of US06 Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_US06/3600),(SOC_Estimated_US06_10deg*100)-(Measured_SOCUS06_10deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_US06/3600),(Error_Test_10degC_US06*100),"blue",'LineWidth',1.5);
legend('Estimated EKF','Predicted FDNN');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_US06/3600),(Measured_SOC_US06_25deg*100),"green",'LineWidth',2);
plot ((RecordingTime_US06/3600),(SOC_Estimated_US06_25deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_US06/3600),(Y_Pred_25degC_US06*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('SOC at 25°C of US06 Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_US06/3600),(SOC_Estimated_US06_25deg*100)-(Measured_SOC_US06_25deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_US06/3600),(Error_Test_25degC_US06*100),"blue",'LineWidth',1.5);
legend('Estimated EKF','Predicted FDNN');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_US06/3600),(Measured_SOC_US06_40deg*100),"green",'LineWidth',2);
plot ((RecordingTime_US06/3600),(SOC_Estimated_US06_40deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_US06/3600),(Y_Pred_40degC_US06*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('SOC at 40°C of US06 Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_US06/3600),(SOC_Estimated_US06_40deg*100)-(Measured_SOC_US06_40deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_US06/3600),(Error_Test_40degC_US06*100),"blue",'LineWidth',1.5);
legend('Estimated EKF','Predicted FDNN');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_US06/3600),(Measured_SOC_US06_n10deg*100),"green",'LineWidth',2);
plot ((RecordingTime_US06/3600),(SOC_Estimated_US06_n10deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_US06/3600),(Y_Pred_n10degC_US06*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('SOC at -10°C of US06 Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_US06/3600),(SOC_Estimated_US06_n10deg*100)-(Measured_SOC_US06_n10deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_US06/3600),(Error_Test_n10degC_US06*100),"blue",'LineWidth',1.5);
legend('Estimated EKF','Predicted FDNN');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_US06/3600),(Measured_SOC_US06_n20deg*100),"green",'LineWidth',2);
plot ((RecordingTime_US06/3600),(SOC_Estimated_US06_n20deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_US06/3600),(Y_Pred_n20degC_US06*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('SOC at -20°C of US06 Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_US06/3600),(SOC_Estimated_US06_n20deg*100)-(Measured_SOC_US06_n20deg*100),"red",'LineWidth',1.5);
plot((RecordingTime_US06/3600),(Error_Test_n20degC_US06*100),"blue",'LineWidth',1.5);
legend('Estimated EKF','Predicted FDNN');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor
