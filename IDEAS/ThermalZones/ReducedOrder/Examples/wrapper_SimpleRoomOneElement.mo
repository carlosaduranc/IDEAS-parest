within IDEAS.ThermalZones.ReducedOrder.Examples;

model wrapper_SimpleRoomOneElement
// parameters as inputs
Modelica.Blocks.Interfaces.RealInput UWin(start=2.1);

// Zone temperature as state
Modelica.Units.SI.Temperature TZon(start=273.15+20);
Modelica.Units.SI.TemperatureSlope der_TZon(start=0);

IDEAS.ThermalZones.ReducedOrder.Examples.SimpleRoomOneElement mod(corGDouPan(UWin=UWin));

equation
TZon = mod.thermalZoneOneElement.TAir;
der_TZon = der(TZon);

end wrapper_SimpleRoomOneElement;