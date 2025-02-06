% READ ME
% This function will take in either the mach number or flight speed in miles per hour as a
% variable 'flight' as well as a temperature 'temp' and return both the
% speed and mach number.
%
% This function is only valid for temperatures between -40 and 25 C, due to
% gas constants, and up to Mach 10.

function [speed, mach] = MachNumber(flight, temp)

% Constants
% /////////////////////////////////////////////////////////////////////////
% Gas Constant
R = 287; % 287 for air, change if necessary
K = 1.401; % Note that this is only valid for T = -40 to 25 C
% % Specific heat of constant pressure
% Cp = 1.005; % 1.005 for air, change if necessary
% % SPecific heat of constant volume, change if necessary
% Cv = 0.718; % 0.718 for air, change if necessary
% /////////////////////////////////////////////////////////////////////////

% Conversions
% /////////////////////////////////////////////////////////////////////////
flightmps = flight / 2.237;
if temp + 273.15 > 233.15
    tempk = temp + 273.15;
else
    tempk = temp;
end
% /////////////////////////////////////////////////////////////////////////

% Calculations
% /////////////////////////////////////////////////////////////////////////
    if flightmps < 10
        speed = flight * sqrt(K*R*tempk);
        mach = flight;
    end
    if flightmps > 10
        mach = flightmps / sqrt(K*R*tempk);
        speed = flight;
    end
end
% /////////////////////////////////////////////////////////////////////////