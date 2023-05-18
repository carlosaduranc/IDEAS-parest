within IDEAS.ThermalZones.ReducedOrder.Examples;

model wrapper_SimpleRoomOneElement
// parameters as inputs
Modelica.Blocks.Interfaces.RealInput UWin(start=2.1);
Modelica.Blocks.Interfaces.RealInput hConWinOut(start=20);
Modelica.Blocks.Interfaces.RealInput hConWallOut(start=20);
Modelica.Blocks.Interfaces.RealInput hRad(start=5.0);

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

// Heat flow as input
Modelica.Blocks.Interfaces.RealInput perRad_QFlow(start=0.0);
Modelica.Blocks.Interfaces.RealInput perCon_QFlow(start=0.0);
Modelica.Blocks.Interfaces.RealInput macConv_QFlow(start=0.0);

// Solar gain values as inputs
Modelica.Blocks.Interfaces.RealInput altAng_in(start=-1.312314673152316);
Modelica.Blocks.Interfaces.RealInput decAng_in(start=-0.4028861337205076);
Modelica.Blocks.Interfaces.RealInput solHouAng_in(start=-3.199218509402784);
Modelica.Blocks.Interfaces.RealInput zenAng_in(start=2.883110999947213);
Modelica.Blocks.Interfaces.RealInput solTim_in(start=-792.4123989393131);
Modelica.Blocks.Interfaces.RealInput modTim_in(start=0);
Modelica.Blocks.Interfaces.RealInput latitude_in(start=0.6565928646002667);
Modelica.Blocks.Interfaces.RealInput longitude_in(start=-2.136283004441059);

IDEAS.ThermalZones.ReducedOrder.Examples.SimpleRoomOneElement mod(corGDouPan(UWin=UWin),
  weaDat(pAtm_in=pAtm_in, TDryBul_in=TDryBul_in, TDewPoi_in=TDewPoi_in, TBlaSky_in=TBlaSky_in, relHum_in=relHum_in, winSpe_in=winSpe_in, winDir_in=winDir_in, HInfHor_in=HInfHor_in, HGloHor_in=HGloHor_in, HDifHor_in=HDifHor_in, HDirNor_in=HDirNor_in, ceiHei_in=ceiHei_in, totSkyCov_in=totSkyCov_in, opaSkyCov_in=opaSkyCov_in,
                  altAng_in=altAng_in, decAng_in=decAng_in, solHouAng_in=solHouAng_in, zenAng_in=zenAng_in, solTim_in=solTim_in, modTim_in=modTim_in, latitude_in=latitude_in, longitude_in=longitude_in),
  perRad(Q_flow=perRad_QFlow),
  perCon(Q_flow=perCon_QFlow),
  macConv(Q_flow=macConv_QFlow),
  eqAirTemp(hConWinOut=hConWinOut, hConWallOut=hConWallOut, hRad=hRad)
  );

equation
TZon = mod.thermalZoneOneElement.TAir;
der_TZon = der(TZon);

end wrapper_SimpleRoomOneElement;