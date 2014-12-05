% Test file to check Axis360 controller single rotator code
%
% Distance to angle conversion formula: angle = 50 * dist
% 

close all;
clear all;
clc;

% Default parameters
default_params = [];
default_params.baud_rate = 57600;
default_params.pulse_rate = 5000;
default_params.angle_factor = 32000;
% For rotator device
dev_id_rotate = 'COM6';

serial_rotate = [];
angle = 0;
resolution = 240;
max_angle = 360;

% angle_to_dist_fact = 360/17.3;
dist = 0.5;
angle = 50*dist - 500;
reset = 0;
serial_rotate = axis360_rotate(dev_id_rotate, serial_rotate, angle, reset, default_params);
% serial_rotate = axis360_rotate(dev_id_rotate, serial_rotate, resolution, reset, default_params);
pause(10);
% for i = 1:resolution:max_angle
%     serial_rotate = axis360_rotate(dev_id_rotate, serial_rotate, angle, reset, default_params);
%     angle = angle + resolution;
%     pause(1);
% end

reset = 2;
serial_rotate = axis360_rotate(dev_id_rotate, serial_rotate, angle, reset, default_params);