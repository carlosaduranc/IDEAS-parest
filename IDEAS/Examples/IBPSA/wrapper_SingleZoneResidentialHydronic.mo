within IDEAS.Examples.IBPSA;

model wrapper_SingleZoneResidentialHydronic
// parameters as inputs
Modelica.Blocks.Interfaces.RealInput n50(start=10);

// Zone temperature as state
Modelica.Units.SI.Temperature TZon(start=273.15+20);
Modelica.Units.SI.TemperatureSlope der_TZon(start=0);

// Weather data as input FILL INITIAL VALUES
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

// Solar gain values as inputs FILL INITIAL VALUES
Modelica.Blocks.Interfaces.RealInput solAlt_in(start=-1.312314673152316);
Modelica.Blocks.Interfaces.RealInput solDec_in(start=-0.4028861337205076);
Modelica.Blocks.Interfaces.RealInput solHouAng_in(start=-3.199218509402784);
Modelica.Blocks.Interfaces.RealInput solZen_in(start=2.883110999947213);
Modelica.Blocks.Interfaces.RealInput solTim_in(start=-792.4123989393131);
Modelica.Blocks.Interfaces.RealInput cloTim_in(start=0);
Modelica.Blocks.Interfaces.RealInput lat_in(start=0.6565928646002667);
Modelica.Blocks.Interfaces.RealInput lon_in(start=-2.136283004441059);

// Ocupancy as input
Modelica.Blocks.Interfaces.RealInput yOcc_in(start=0);



IDEAS.Examples.IBPSA.SingleZoneResidentialHydronic mod(yOcc=yOcc_in,
sim.weaDat(pAtm_in=pAtm_in, TDryBul_in=TDryBul_in, TDewPoi_in=TDewPoi_in, TBlaSky_in=TBlaSky_in, relHum_in=relHum_in, winSpe_in=winSpe_in, winDir_in=winDir_in, HInfHor_in=HInfHor_in, HGloHor_in=HGloHor_in, HDifHor_in=HDifHor_in, HDirNor_in=HDirNor_in, ceiHei_in=ceiHei_in, totSkyCov_in=totSkyCov_in, opaSkyCov_in=opaSkyCov_in, solAlt_in=solAlt_in, solDec_in=solDec_in, solHouAng_in=solHouAng_in, solZen_in=solZen_in, solTim_in=solTim_in, cloTim_in=cloTim_in, lat_in=lat_in, lon_in=lon_in),
case900Template(n50=n50));

equation
TZon = mod.case900Template.TSensor;
der_TZon = der(TZon);


end wrapper_SingleZoneResidentialHydronic;