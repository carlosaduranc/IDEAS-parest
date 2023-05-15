within IDEAS.ThermalZones.ReducedOrder.Examples;

model wrapper_SimpleRoomOneElement
// parameters as inputs
Modelica.Blocks.Interfaces.RealInput UWin(start=2.1);

// Zone temperature as state
Modelica.Units.SI.Temperature TZon(start=273.15+20);
Modelica.Units.SI.TemperatureSlope der_TZon(start=0);

// Weather data as input
Modelica.Blocks.Interfaces.RealInput pAtm_in(start=101325);
Modelica.Blocks.Interfaces.RealInput TDryBul_in(start=293.15);
Modelica.Blocks.Interfaces.RealInput TDewPoi_in(start=283.15);
Modelica.Blocks.Interfaces.RealInput TBlaSky_in(start=273.15);
Modelica.Blocks.Interfaces.RealInput relHum_in(start=0.5);
Modelica.Blocks.Interfaces.RealInput winSpe_in(start=1);
Modelica.Blocks.Interfaces.RealInput winDir_in(start=1.0);
Modelica.Blocks.Interfaces.RealInput HInfHor_in(start=0.0);
Modelica.Blocks.Interfaces.RealInput HGloHor_in(start=0.0);
Modelica.Blocks.Interfaces.RealInput HDifHor_in(start=0.0);
Modelica.Blocks.Interfaces.RealInput HDirNor_in(start=0.0);
Modelica.Blocks.Interfaces.RealInput ceiHei_in(start=20000);
Modelica.Blocks.Interfaces.RealInput totSkyCov_in(start=0.5);
Modelica.Blocks.Interfaces.RealInput opaSkyCov_in(start=0.5);

Modelica.Blocks.Interfaces.RealInput perRad_QFlow(start=0.0);
Modelica.Blocks.Interfaces.RealInput perCon_QFlow(start=0.0);
Modelica.Blocks.Interfaces.RealInput macConv_QFlow(start=0.0);

IDEAS.ThermalZones.ReducedOrder.Examples.SimpleRoomOneElement mod(corGDouPan(UWin=UWin),
  weaDat(pAtm_in=pAtm_in, TDryBul_in=TDryBul_in, TDewPoi_in=TDewPoi_in, TBlaSky_in=TBlaSky_in, relHum_in=relHum_in, winSpe_in=winSpe_in, winDir_in=winDir_in, HInfHor_in=HInfHor_in, HGloHor_in=HGloHor_in, HDifHor_in=HDifHor_in, HDirNor_in=HDirNor_in, ceiHei_in=ceiHei_in, totSkyCov_in=totSkyCov_in, opaSkyCov_in=opaSkyCov_in),
  perRad(Q_flow=perRad_QFlow),
  perCon(Q_flow=perCon_QFlow),
  macConv(Q_flow=macConv_QFlow)
  );

equation
TZon = mod.thermalZoneOneElement.TAir;
der_TZon = der(TZon);

end wrapper_SimpleRoomOneElement;