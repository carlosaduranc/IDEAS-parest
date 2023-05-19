within IDEAS.Examples.IBPSA;

model wrapper_SingleZoneResidentialHydronicHeatPump
// parameters as inputs


// Zone temperature as state
Modelica.Units.SI.Temperature TZon(start=273.15+20);
Modelica.Units.SI.TemperatureSlope der_TZon(start=0);

// Weather data as input


IDEAS.Examples.IBPSA.SingleZoneResidentialHydronicHeatPump mod;

equation
TZon = mod.case900Template.TAir;
der_TZon = der(TZon);


end wrapper_SingleZoneResidentialHydronicHeatPump;