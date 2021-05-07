% Importing Artemis Urban Drive Cycle
Artimus_Urban = readmatrix('ArtemisUrbanDriveCycle-201201-182957.xlsx');

% Vehicle Parameters
% Mass of the vehicle
M = 1630.665; % Kg

% Driver's Mass
Md = 80; % Kg

% Gross Vehicle Mass
GVM = M+Md;

% Gravitational Constant
g = 9.81; % m/s^2
% Gross Vehicle Weight
GVW = GVM*g;

% Frontal Area
A = 3.8065; % m^2
% Air density
rho = 1.225; %kg/m^3
% Drag Coefficient
Cd = 0.28;
% Coefficient of rolling resistance
Crf = 0.015;
% Radius of Wheel
Rw = 0.2032; %m

% Transmission
% Gear Ratio
GR = 7.9377;
% Transmission Efficiency
Neff = 0.89;

%Motor
%Motor Efficiency
Motor_eff_data = readmatrix('Nissan Leaf Motor Efficiency.xls');
Motor_eff.Speed = Motor_eff_data(:,1);
Motor_eff.Torque = Motor_eff_data(:,17);
Motor_eff.eff = Motor_eff_data(1:15,2:16);
%Surface plot of the efficiency
figure('Name','Motor Efficiency')
surf(Motor_eff.Speed,Motor_eff.Torque,Motor_eff.eff)
xlabel('Motor Speed (rpm)')
ylabel('Motor Torque (Nm)')
zlabel('Motor Efficiency (%)')

%Regenerative Efficiency
Motor_reff_data = readmatrix('Nissan Leaf Motor Regenerative efficiency.xls');
Motor_reff.Speed = Motor_reff_data(:,1);
Motor_reff.Torque = Motor_reff_data(:,17);
Motor_reff.eff = Motor_reff_data(1:15,2:16);
%Surface plot of the Regenerative efficiency
figure('Name','Motor Regenerative Efficiency')
surf(Motor_reff.Speed,Motor_reff.Torque,Motor_reff.eff)
xlabel('Motor Speed (rpm)')
ylabel('Motor Torque (Nm)')
zlabel('Motor Efficiency (%)')

%Motor Controller
%Motoring Controller efficiency
Motor_controller_eff_data = readmatrix('Nissan Leaf Motor Controller Efficiency.csv');
Motor_controller_eff.Speed = Motor_controller_eff_data(:,1);
Motor_controller_eff.Torque = Motor_controller_eff_data(:,17);
Motor_controller_eff.eff = Motor_controller_eff_data(1:15,2:16);
%Surface plot of the efficiency
figure('Name','Motor Controller Motoring Efficiency')
surf(Motor_controller_eff.Speed,Motor_controller_eff.Torque,Motor_controller_eff.eff)
xlabel('Motor Controller Speed (rpm)')
ylabel('Motor Controller Torque (Nm)')
zlabel('Motor Controller Efficiency (%)')


%Regenerative Efficiency
Motor_controller_reff_data = readmatrix('Nissan leaf motor controller regenerative efficiency.csv');
Motor_controller_reff.Speed = Motor_controller_reff_data(:,1);
Motor_controller_reff.Torque = Motor_controller_reff_data(:,17);
Motor_controller_reff.eff = Motor_controller_reff_data(1:15,2:16);
%Surface plot of the Regenerative efficiency
figure('Name','Motor Controller Regenerative Efficiency')
surf(Motor_controller_reff.Speed,Motor_controller_reff.Torque,Motor_controller_reff.eff)
xlabel('Motor Controller Speed (rpm)')
ylabel('Motor Controller Torque (Nm)')
zlabel('Motor Controller Regenerative Efficiency (%)')

%Battery
%Drive Cycle Distance
Distance = 4.874; %Km
%Battery Voltage
B_Voltage = 364.8; %V
%Initial SOC
ISOC = 1; % 100%

%Cell
%Cell Voltage
Cv = 3.8; %V
%Cell Capacity
Ccap = 33.1; %Ah
