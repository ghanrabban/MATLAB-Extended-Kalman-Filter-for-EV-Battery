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
legend('Coulomb Counting','Estimated EKF');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Estimated EKF SOC No Filtering of HWFET Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_HWFET/3600),(SOC_Estimated_HWFET_NoMod*100)-(Measured_SOC_HWFET_NoMod*100),"red",'LineWidth',1.5);
legend('Estimated EKF');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_HWFET/3600),(Measured_SOC_HWFET_NoMod*100),"green",'LineWidth',2);
plot((RecordingTime_HWFET/3600),(Y_Pred_NoMod_HWFET*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Predicted FDNN SOC No Filtering of HWFET Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_HWFET/3600),(Error_Test_NoMod_HWFET*100),"blue",'LineWidth',1.5);
legend('Predicted FDNN');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_US06/3600),(Measured_SOC_US06_NoMod*100),"green",'LineWidth',2);
plot ((RecordingTime_US06/3600),(SOC_Estimated_US06_NoMod*100),"red",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Estimated EKF SOC No Filtering of US06 Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_US06/3600),(SOC_Estimated_US06_NoMod*100)-(Measured_SOC_US06_NoMod*100),"red",'LineWidth',1.5);
legend('Estimated EKF');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_US06/3600),(Measured_SOC_US06_NoMod*100),"green",'LineWidth',2);
plot((RecordingTime_US06/3600),(Y_Pred_NoMod_US06*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Predicted FDNN SOC No Filtering of US06 Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_US06/3600),(Error_Test_NoMod_US06*100),"blue",'LineWidth',1.5);
legend('Predicted FDNN');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_UDDS/3600),(Measured_SOC_UDDS_NoMod*100),"green",'LineWidth',2);
plot ((RecordingTime_UDDS/3600),(SOC_Estimated_UDDS_NoMod*100),"red",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Estimated EKF SOC No Filtering of UDDS Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_UDDS/3600),(SOC_Estimated_UDDS_NoMod*100)-(Measured_SOC_UDDS_NoMod*100),"red",'LineWidth',1.5);
legend('Estimated EKF');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_UDDS/3600),(Measured_SOC_UDDS_NoMod*100),"green",'LineWidth',2);
plot((RecordingTime_UDDS/3600),(Y_Pred_NoMod_UDDS*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Predicted FDNN SOC No Filtering of UDDS Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_UDDS/3600),(Error_Test_NoMod_UDDS*100),"blue",'LineWidth',1.5);
legend('Predicted FDNN');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_HWFET/3600),(Measured_SOC_HWFET_10deg*100),"green",'LineWidth',2);
plot ((RecordingTime_HWFET/3600),(SOC_Estimated_HWFET_10deg*100),"red",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Estimated EKF SOC With Filtering of HWFET Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_HWFET/3600),(SOC_Estimated_HWFET_10deg*100)-(Measured_SOC_HWFET_10deg*100),"red",'LineWidth',1.5);
legend('Estimated EKF');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_UDDS/3600),(Measured_SOC_UDDS_40deg*100),"green",'LineWidth',2);
plot ((RecordingTime_UDDS/3600),(SOC_Estimated_UDDS_40deg*100),"red",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Estimated EKF SOC With Filtering of UDDS Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_UDDS/3600),(SOC_Estimated_UDDS_40deg*100)-(Measured_SOC_UDDS_40deg*100),"red",'LineWidth',1.5);
legend('Estimated EKF');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_US06/3600),(Measured_SOC_US06_25deg*100),"green",'LineWidth',2);
plot ((RecordingTime_US06/3600),(SOC_Estimated_US06_25deg*100),"red",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Estimated EKF SOC With Filtering of US06 Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_US06/3600),(SOC_Estimated_US06_25deg*100)-(Measured_SOC_US06_25deg*100),"red",'LineWidth',1.5);
legend('Estimated EKF');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_HWFET/3600),(Measured_SOC_HWFET_0deg*100),"green",'LineWidth',2);
plot((RecordingTime_HWFET/3600),(Y_Pred_0degC_HWFET*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Predicted FDNN SOC With Filtering of HWFET Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_HWFET/3600),(Error_Test_0degC_HWFET*100),"blue",'LineWidth',1.5);
legend('Predicted FDNN');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_UDDS/3600),(Measured_SOC_UDDS_0deg*100),"green",'LineWidth',2);
plot((RecordingTime_UDDS/3600),(Y_Pred_0degC_UDDS*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Predicted FDNN SOC With Filtering of UDDS Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_UDDS/3600),(Error_Test_0degC_UDDS*100),"blue",'LineWidth',1.5);
legend('Predicted FDNN');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_US06/3600),(Measured_SOC_US06_0deg*100),"green",'LineWidth',2);
plot((RecordingTime_US06/3600),(Y_Pred_0degC_US06*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Predicted FDNN SOC With Filtering of US06 Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_US06/3600),(Error_Test_0degC_US06*100),"blue",'LineWidth',1.5);
legend('Predicted FDNN');
ylabel('Error(%)');
xlabel('Time(hours)');
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_HWFET/3600),(Measured_SOC_HWFET_NoMod*100),"green",'LineWidth',2);
plot ((RecordingTime_HWFET/3600),(SOC_Estimated_HWFET_NoMod*100),"red",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Estimated EKF SOC No Filtering of HWFET Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot ((RecordingTime_HWFET/3600),(Measured_SOC_HWFET_WithMod*100),"green",'LineWidth',2);
plot ((RecordingTime_HWFET/3600),(SOC_Estimated_HWFET_WithMod*100),"red",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Estimated EKF SOC With Filtering of HWFET Estimation')
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_UDDS/3600),(Measured_SOC_UDDS_NoMod*100),"green",'LineWidth',2);
plot ((RecordingTime_UDDS/3600),(SOC_Estimated_UDDS_NoMod*100),"red",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Estimated EKF SOC No Filtering of UDDS Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_UDDS/3600),(Measured_SOC_UDDS_WithMod*100),"green",'LineWidth',2);
plot((RecordingTime_UDDS/3600),(SOC_Estimated_UDDS_WithMod*100),"red",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Estimated EKF SOC With Filtering of UDDS Estimation')
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_US06/3600),(Measured_SOC_US06_NoMod*100),"green",'LineWidth',2);
plot ((RecordingTime_US06/3600),(SOC_Estimated_US06_NoMod*100),"red",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Estimated EKF SOC No Filtering of US06 Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot ((RecordingTime_US06/3600),(Measured_SOC_US06_WithMod*100),"green",'LineWidth',2);
plot ((RecordingTime_US06/3600),(SOC_Estimated_US06_WithMod*100),"red",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Estimated EKF SOC With Filtering of US06 Estimation')
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_HWFET/3600),(Measured_SOC_HWFET_NoMod*100),"green",'LineWidth',2);
plot((RecordingTime_HWFET/3600),(Y_Pred_NoMod_HWFET*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Predicted FDNN SOC No Filtering of HWFET Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot ((RecordingTime_HWFET/3600),(Measured_SOC_HWFET_WithMod*100),"green",'LineWidth',2);
plot((RecordingTime_HWFET/3600),(Y_Pred_WithMod_HWFET*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Predicted FDNN SOC With Filtering of HWFET Estimation')
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_UDDS/3600),(Measured_SOC_UDDS_WithMod*100),"green",'LineWidth',2);
plot((RecordingTime_UDDS/3600),(Y_Pred_NoMod_UDDS*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Predicted FDNN SOC No Filtering of UDDS Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot ((RecordingTime_UDDS/3600),(Measured_SOC_UDDS_0deg*100),"green",'LineWidth',2);
plot((RecordingTime_UDDS/3600),(Y_Pred_WithMod_UDDS*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Predicted FDNN SOC With Filtering of UDDS Estimation')
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot ((RecordingTime_US06/3600),(Measured_SOC_US06_NoMod*100),"green",'LineWidth',2);
plot((RecordingTime_US06/3600),(Y_Pred_NoMod_US06*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Predicted FDNN SOC No Filtering of US06 Estimation')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot ((RecordingTime_US06/3600),(Measured_SOC_US06_WithMod*100),"green",'LineWidth',2);
plot((RecordingTime_US06/3600),(Y_Pred_WithMod_US06*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Predicted FDNN SOC With Filtering of US06 Estimation')
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot((RecordingTime_HWFET/3600),(Measured_SOC_HWFET_NoMod*100),"green",'LineWidth',2);
plot((RecordingTime_HWFET/3600),(SOC_Estimated_HWFET_NoMod*100),"red",'LineWidth',1.5);
plot((RecordingTime_HWFET/3600),(Y_Pred_NoMod_HWFET*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Estimated SOC No Filtering of HWFET Drive Cycle')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_HWFET/3600),(Measured_SOC_HWFET_WithMod*100),"green",'LineWidth',2);
plot((RecordingTime_HWFET/3600),(SOC_Estimated_HWFET_WithMod*100),"red",'LineWidth',1.5);
plot((RecordingTime_HWFET/3600),(Y_Pred_WithMod_HWFET*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Estimated SOC With Filetring of HWFET Drive Cycle')
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot((RecordingTime_UDDS/3600),(Measured_SOC_UDDS_NoMod*100),"green",'LineWidth',2);
plot((RecordingTime_UDDS/3600),(SOC_Estimated_UDDS_NoMod*100),"red",'LineWidth',1.5);
plot((RecordingTime_UDDS/3600),(Y_Pred_NoMod_UDDS*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Estimated SOC No Filtering of UDDS Drive Cycle')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_UDDS/3600),(Measured_SOC_UDDS_WithMod*100),"green",'LineWidth',2);
plot((RecordingTime_UDDS/3600),(SOC_Estimated_UDDS_WithMod*100),"red",'LineWidth',1.5);
plot((RecordingTime_UDDS/3600),(Y_Pred_WithMod_UDDS*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Estimated SOC With Filetring of UDDS Drive Cycle')
set(gca,'FontName','Calibri')
grid minor

figure
subplot(2,1,1)
hold all
plot((RecordingTime_US06/3600),(Measured_SOC_US06_NoMod*100),"green",'LineWidth',2);
plot((RecordingTime_US06/3600),(SOC_Estimated_US06_NoMod*100),"red",'LineWidth',1.5);
plot((RecordingTime_US06/3600),(Y_Pred_NoMod_US06*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Estimated SOC No Filtering of US06 Drive Cycle')
set(gca,'FontName','Calibri')
grid minor
subplot(2,1,2)
hold all
plot((RecordingTime_US06/3600),(Measured_SOC_US06_WithMod*100),"green",'LineWidth',2);
plot((RecordingTime_US06/3600),(SOC_Estimated_US06_WithMod*100),"red",'LineWidth',1.5);
plot((RecordingTime_US06/3600),(Y_Pred_WithMod_US06*100),"blue",'LineWidth',1.5);
legend('Coulomb Counting','Estimated EKF','Predicted FDNN');
ylabel('SOC(%)');
xlabel('Time(hours)');
title('Estimated SOC With Filetring of US06 Drive Cycle')
set(gca,'FontName','Calibri')
grid minor