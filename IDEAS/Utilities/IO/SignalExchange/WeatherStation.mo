within IDEAS.Utilities.IO.SignalExchange;

model WeatherStation "Implements typical weather measurements with signal exchange blocks"
  IDEAS.BoundaryConditions.WeatherData.Bus weaBus "Weather data" annotation(
    Placement(visible = true, transformation(origin = {20, 0}, extent = {{-110, -10}, {-90, 10}}, rotation = 0), iconTransformation(origin = {0, 0}, extent = {{-112, -14}, {-86, 12}}, rotation = 0)));
  IDEAS.Utilities.IO.SignalExchange.Read reaWeaTDryBul(description = "Outside drybulb temperature measurement", y(final unit = "K")) "Outside drybulb temperature measurement" annotation(
    Placement(visible = true, transformation(origin = {20, 0}, extent = {{-40, 80}, {-20, 100}}, rotation = 0)));
  IDEAS.Utilities.IO.SignalExchange.Read reaWeaRelHum(description = "Outside relative humidity measurement", y(final unit = "1")) "Outside relative humidity measurement" annotation(
    Placement(visible = true, transformation(origin = {20, 0}, extent = {{-40, 50}, {-20, 70}}, rotation = 0)));
  IDEAS.Utilities.IO.SignalExchange.Read reaWeaWinSpe(description = "Wind speed measurement", y(final unit = "m/s")) "Wind speed measurement" annotation(
    Placement(visible = true, transformation(origin = {20, 0}, extent = {{-40, 20}, {-20, 40}}, rotation = 0)));
  IDEAS.Utilities.IO.SignalExchange.Read reaWeaWinDir(description = "Wind direction measurement", y(final unit = "rad")) "Wind direction measurement" annotation(
    Placement(visible = true, transformation(origin = {20, 0}, extent = {{-40, -10}, {-20, 10}}, rotation = 0)));
  IDEAS.Utilities.IO.SignalExchange.Read reaWeaHGloHor(description = "Global horizontal solar irradiation measurement", y(final unit = "W/m2")) "Global horizontal solar irradiation measurement" annotation(
    Placement(visible = true, transformation(origin = {20, 0}, extent = {{-40, -40}, {-20, -20}}, rotation = 0)));
  IDEAS.Utilities.IO.SignalExchange.Read reaWeaNTot(description = "Sky cover measurement", y(final unit = "1")) "Sky cover measurement" annotation(
    Placement(visible = true, transformation(origin = {20, 0}, extent = {{-40, -70}, {-20, -50}}, rotation = 0)));
  IDEAS.Utilities.IO.SignalExchange.Read reaWeaPAtm(description = "Atmospheric pressure measurement", y(final unit = "Pa")) "Atmospheric pressure measurement" annotation(
    Placement(visible = true, transformation(origin = {20, 0}, extent = {{-40, -100}, {-20, -80}}, rotation = 0)));
  IDEAS.Utilities.IO.SignalExchange.Read reaWeaHDifHor(description = "Horizontal diffuse solar radiation measurement", y(final unit = "W/m2")) "Horizontal diffuse solar radiation measurement" annotation(
    Placement(visible = true, transformation(origin = {20, 0}, extent = {{0, 80}, {20, 100}}, rotation = 0)));
  IDEAS.Utilities.IO.SignalExchange.Read reaWeaCeiHei(description = "Cloud cover ceiling height measurement", y(final unit = "m")) "Cloud cover ceiling height measurement" annotation(
    Placement(visible = true, transformation(origin = {20, 0}, extent = {{0, -100}, {20, -80}}, rotation = 0)));
  IDEAS.Utilities.IO.SignalExchange.Read reaWeaTWetBul(description = "Wet bulb temperature measurement", y(final unit = "K")) "Wet bulb temperature measurement" annotation(
    Placement(visible = true, transformation(origin = {20, 0}, extent = {{0, -70}, {20, -50}}, rotation = 0)));
  IDEAS.Utilities.IO.SignalExchange.Read reaWeaTDewPoi(description = "Dew point temperature measurement", y(final unit = "K")) "Dew point temperature measurement" annotation(
    Placement(visible = true, transformation(origin = {20, 0}, extent = {{0, -40}, {20, -20}}, rotation = 0)));
  IDEAS.Utilities.IO.SignalExchange.Read reaWeaTBlaSky(description = "Black-body sky temperature measurement", y(final unit = "K")) "Black-body sky temperature measurement" annotation(
    Placement(visible = true, transformation(origin = {20, 0}, extent = {{0, -10}, {20, 10}}, rotation = 0)));
  IDEAS.Utilities.IO.SignalExchange.Read reaWeaHHorIR(description = "Horizontal infrared irradiation measurement", y(final unit = "W/m2")) "Horizontal infrared irradiation measurement" annotation(
    Placement(visible = true, transformation(origin = {20, 0}, extent = {{0, 20}, {20, 40}}, rotation = 0)));
  IDEAS.Utilities.IO.SignalExchange.Read reaWeaHDirNor(description = "Direct normal radiation measurement", y(final unit = "W/m2")) "Direct normal radiation measurement" annotation(
    Placement(visible = true, transformation(origin = {20, 0}, extent = {{0, 50}, {20, 70}}, rotation = 0)));
  IDEAS.Utilities.IO.SignalExchange.Read reaWeaCloTim(description = "Day number with units of seconds", y(final unit = "s")) "Day number with units of seconds" annotation(
    Placement(visible = true, transformation(origin = {20, 0}, extent = {{40, 80}, {60, 100}}, rotation = 0)));
  IDEAS.Utilities.IO.SignalExchange.Read reaWeaSolAlt(description = "Solar altitude angle measurement", y(final unit = "rad")) "Solar altitude angle measurement" annotation(
    Placement(visible = true, transformation(origin = {20, 0}, extent = {{40, -40}, {60, -20}}, rotation = 0)));
  IDEAS.Utilities.IO.SignalExchange.Read reaWeaNOpa(description = "Opaque sky cover measurement", y(final unit = "1")) "Opaque sky cover measurement" annotation(
    Placement(visible = true, transformation(origin = {20, 0}, extent = {{40, -10}, {60, 10}}, rotation = 0)));
  IDEAS.Utilities.IO.SignalExchange.Read reaWeaLat(description = "Latitude of the location", y(final unit = "rad")) "Latitude of the location" annotation(
    Placement(visible = true, transformation(origin = {20, 0}, extent = {{40, 50}, {60, 70}}, rotation = 0)));
  IDEAS.Utilities.IO.SignalExchange.Read reaWeaLon(description = "Longitude of the location", y(final unit = "rad")) "Longitude of the location" annotation(
    Placement(visible = true, transformation(origin = {20, 0}, extent = {{40, 20}, {60, 40}}, rotation = 0)));
  IDEAS.Utilities.IO.SignalExchange.Read reaWeaSolDec(description = "Solar declination angle measurement", y(final unit = "rad")) "Solar declination angle measurement" annotation(
    Placement(visible = true, transformation(origin = {20, 0}, extent = {{40, -70}, {60, -50}}, rotation = 0)));
  IDEAS.Utilities.IO.SignalExchange.Read reaWeaSolHouAng(description = "Solar hour angle measurement", y(final unit = "rad")) "Solar hour angle measurement" annotation(
    Placement(visible = true, transformation(origin = {20, 0}, extent = {{40, -100}, {60, -80}}, rotation = 0)));
  IDEAS.Utilities.IO.SignalExchange.Read reaWeaSolTim(description = "Solar time", y(final unit = "s")) "Solar time" annotation(
    Placement(visible = true, transformation(origin = {20, 0}, extent = {{80, 80}, {100, 100}}, rotation = 0)));
  IDEAS.Utilities.IO.SignalExchange.Read reaWeaSolZen(description = "Solar zenith angle measurement", y(final unit = "rad")) "Solar zenith angle measurement" annotation(
    Placement(visible = true, transformation(origin = {20, 0}, extent = {{80, 50}, {100, 70}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput TDryBul_in annotation(
    Placement(visible = true, transformation(origin = {-115, 105}, extent = {{-15, -15}, {15, 15}}, rotation = 0), iconTransformation(origin = {-106, 114}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput HDifHor_in annotation(
    Placement(visible = true, transformation(origin = {-115, 85}, extent = {{-15, -15}, {15, 15}}, rotation = 0), iconTransformation(origin = {-106, 114}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput cloTim_in annotation(
    Placement(visible = true, transformation(origin = {-115, 65}, extent = {{-15, -15}, {15, 15}}, rotation = 0), iconTransformation(origin = {-106, 114}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput solTim_in annotation(
    Placement(visible = true, transformation(origin = {-115, 45}, extent = {{-15, -15}, {15, 15}}, rotation = 0), iconTransformation(origin = {-106, 114}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput relHum_in annotation(
    Placement(visible = true, transformation(origin = {-115, 25}, extent = {{-15, -15}, {15, 15}}, rotation = 0), iconTransformation(origin = {-106, 114}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput HDirNor_in annotation(
    Placement(visible = true, transformation(origin = {-115, 5}, extent = {{-15, -15}, {15, 15}}, rotation = 0), iconTransformation(origin = {-106, 114}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput lat_in annotation(
    Placement(visible = true, transformation(origin = {-115, -15}, extent = {{-15, -15}, {15, 15}}, rotation = 0), iconTransformation(origin = {-106, 114}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput solZen_in annotation(
    Placement(visible = true, transformation(origin = {-115, -35}, extent = {{-15, -15}, {15, 15}}, rotation = 0), iconTransformation(origin = {-106, 114}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput winSpe_in annotation(
    Placement(visible = true, transformation(origin = {-115, -55}, extent = {{-15, -15}, {15, 15}}, rotation = 0), iconTransformation(origin = {-106, 114}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput HHorIR_in annotation(
    Placement(visible = true, transformation(origin = {-115, -75}, extent = {{-15, -15}, {15, 15}}, rotation = 0), iconTransformation(origin = {-106, 114}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput lon_in annotation(
    Placement(visible = true, transformation(origin = {-115, -95}, extent = {{-15, -15}, {15, 15}}, rotation = 0), iconTransformation(origin = {-106, 114}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput winDir_in annotation(
    Placement(visible = true, transformation(origin = {-115, -115}, extent = {{-15, -15}, {15, 15}}, rotation = 0), iconTransformation(origin = {-106, 114}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput TBlaSky_in annotation(
    Placement(visible = true, transformation(origin = {-95, -135}, extent = {{-15, -15}, {15, 15}}, rotation = 90), iconTransformation(origin = {-106, 114}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput nOpa_in annotation(
    Placement(visible = true, transformation(origin = {-75, -135}, extent = {{-15, -15}, {15, 15}}, rotation = 90), iconTransformation(origin = {-106, 114}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput HGloHor_in annotation(
    Placement(visible = true, transformation(origin = {-55, -135}, extent = {{-15, -15}, {15, 15}}, rotation = 90), iconTransformation(origin = {-106, 114}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput TDewPoi_in annotation(
    Placement(visible = true, transformation(origin = {-35, -135}, extent = {{-15, -15}, {15, 15}}, rotation = 90), iconTransformation(origin = {-106, 114}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput solAlt_in annotation(
    Placement(visible = true, transformation(origin = {-15, -135}, extent = {{-15, -15}, {15, 15}}, rotation = 90), iconTransformation(origin = {-106, 114}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput solDec_in annotation(
    Placement(visible = true, transformation(origin = {45, -135}, extent = {{-15, -15}, {15, 15}}, rotation = 90), iconTransformation(origin = {-106, 114}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput TWetBul_in annotation(
    Placement(visible = true, transformation(origin = {25, -135}, extent = {{-15, -15}, {15, 15}}, rotation = 90), iconTransformation(origin = {-106, 114}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput nTot_in annotation(
    Placement(visible = true, transformation(origin = {5, -135}, extent = {{-15, -15}, {15, 15}}, rotation = 90), iconTransformation(origin = {-106, 114}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput pAtm_in annotation(
    Placement(visible = true, transformation(origin = {65, -135}, extent = {{-15, -15}, {15, 15}}, rotation = 90), iconTransformation(origin = {-106, 114}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput solHouAng_in annotation(
    Placement(visible = true, transformation(origin = {105, -135}, extent = {{-15, -15}, {15, 15}}, rotation = 90), iconTransformation(origin = {-106, 114}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput ceiHei_in annotation(
    Placement(visible = true, transformation(origin = {85, -135}, extent = {{-15, -15}, {15, 15}}, rotation = 90), iconTransformation(origin = {-106, 114}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
equation
  connect(weaBus.TDryBul, reaWeaTDryBul.u) annotation(
    Line(points = {{-80, 0}, {-40, 0}, {-40, 90}, {-22, 90}}, color = {255, 204, 51}, pattern = LinePattern.Solid, thickness = 0.5));
  connect(weaBus.relHum, reaWeaRelHum.u) annotation(
    Line(points = {{-80, 0}, {-40, 0}, {-40, 60}, {-22, 60}}, color = {255, 204, 51}, pattern = LinePattern.Solid, thickness = 0.5));
  connect(weaBus.winSpe, reaWeaWinSpe.u) annotation(
    Line(points = {{-80, 0}, {-40, 0}, {-40, 30}, {-22, 30}}, color = {255, 204, 51}, pattern = LinePattern.Solid, thickness = 0.5));
  connect(weaBus.winDir, reaWeaWinDir.u) annotation(
    Line(points = {{-80, 0}, {-22, 0}}, color = {255, 204, 51}, pattern = LinePattern.Solid, thickness = 0.5));
  connect(weaBus.HGloHor, reaWeaHGloHor.u) annotation(
    Line(points = {{-80, 0}, {-40, 0}, {-40, -30}, {-22, -30}}, color = {255, 204, 51}, pattern = LinePattern.Solid, thickness = 0.5));
  connect(weaBus.nTot, reaWeaNTot.u) annotation(
    Line(points = {{-80, 0}, {-40, 0}, {-40, -60}, {-22, -60}}, color = {255, 204, 51}, pattern = LinePattern.Solid, thickness = 0.5));
  connect(weaBus.pAtm, reaWeaPAtm.u) annotation(
    Line(points = {{-80, 0}, {-40, 0}, {-40, -90}, {-22, -90}}, color = {255, 204, 51}, pattern = LinePattern.Solid, thickness = 0.5));
  connect(weaBus.HDifHor, reaWeaHDifHor.u) annotation(
    Line(points = {{-80, 0}, {-40, 0}, {-40, 76}, {10, 76}, {10, 90}, {18, 90}}, color = {255, 204, 51}, pattern = LinePattern.Solid, thickness = 0.5));
  connect(weaBus.HDirNor, reaWeaHDirNor.u) annotation(
    Line(points = {{-80, 0}, {-40, 0}, {-40, 46}, {10, 46}, {10, 60}, {18, 60}}, color = {255, 204, 51}, pattern = LinePattern.Solid, thickness = 0.5));
  connect(weaBus.HHorIR, reaWeaHHorIR.u) annotation(
    Line(points = {{-80, 0}, {-40, 0}, {-40, 16}, {8, 16}, {8, 30}, {18, 30}}, color = {255, 204, 51}, pattern = LinePattern.Solid, thickness = 0.5));
  connect(weaBus.TBlaSky, reaWeaTBlaSky.u) annotation(
    Line(points = {{-80, 0}, {-40, 0}, {-40, -14}, {8, -14}, {8, 0}, {18, 0}}, color = {255, 204, 51}, pattern = LinePattern.Solid, thickness = 0.5));
  connect(weaBus.TDewPoi, reaWeaTDewPoi.u) annotation(
    Line(points = {{-80, 0}, {-40, 0}, {-40, -44}, {10, -44}, {10, -30}, {18, -30}}, color = {255, 204, 51}, pattern = LinePattern.Solid, thickness = 0.5));
  connect(weaBus.TWetBul, reaWeaTWetBul.u) annotation(
    Line(points = {{-80, 0}, {-40, 0}, {-40, -74}, {10, -74}, {10, -60}, {18, -60}}, color = {255, 204, 51}, pattern = LinePattern.Solid, thickness = 0.5));
  connect(weaBus.ceiHei, reaWeaCeiHei.u) annotation(
    Line(points = {{-80, 0}, {-40, 0}, {-40, -100}, {10, -100}, {10, -90}, {18, -90}}, color = {255, 204, 51}, pattern = LinePattern.Solid, thickness = 0.5));
  connect(weaBus.cloTim, reaWeaCloTim.u) annotation(
    Line(points = {{-80, 0}, {-40, 0}, {-40, 76}, {50, 76}, {50, 90}, {58, 90}}, color = {255, 204, 51}, pattern = LinePattern.Solid, thickness = 0.5));
  connect(weaBus.lat, reaWeaLat.u) annotation(
    Line(points = {{-80, 0}, {-40, 0}, {-40, 46}, {50, 46}, {50, 60}, {58, 60}}, color = {255, 204, 51}, pattern = LinePattern.Solid, thickness = 0.5));
  connect(weaBus.lon, reaWeaLon.u) annotation(
    Line(points = {{-80, 0}, {-40, 0}, {-40, 16}, {50, 16}, {50, 30}, {58, 30}}, color = {255, 204, 51}, pattern = LinePattern.Solid, thickness = 0.5));
  connect(weaBus.nOpa, reaWeaNOpa.u) annotation(
    Line(points = {{-80, 0}, {-40, 0}, {-40, -14}, {50, -14}, {50, 0}, {58, 0}}, color = {255, 204, 51}, pattern = LinePattern.Solid, thickness = 0.5));
  connect(weaBus.solAlt, reaWeaSolAlt.u) annotation(
    Line(points = {{-80, 0}, {-40, 0}, {-40, -44}, {50, -44}, {50, -30}, {58, -30}}, color = {255, 204, 51}, pattern = LinePattern.Solid, thickness = 0.5));
  connect(weaBus.solDec, reaWeaSolDec.u) annotation(
    Line(points = {{-80, 0}, {-40, 0}, {-40, -74}, {50, -74}, {50, -60}, {58, -60}}, color = {255, 204, 51}, pattern = LinePattern.Solid, thickness = 0.5));
  connect(weaBus.solHouAng, reaWeaSolHouAng.u) annotation(
    Line(points = {{-80, 0}, {-40, 0}, {-40, -100}, {50, -100}, {50, -90}, {58, -90}}, color = {255, 204, 51}, pattern = LinePattern.Solid, thickness = 0.5));
  connect(weaBus.solTim, reaWeaSolTim.u) annotation(
    Line(points = {{-80, 0}, {-40, 0}, {-40, 76}, {90, 76}, {90, 90}, {98, 90}}, color = {255, 204, 51}, pattern = LinePattern.Solid, thickness = 0.5));
  connect(weaBus.solZen, reaWeaSolZen.u) annotation(
    Line(points = {{-80, 0}, {-40, 0}, {-40, 46}, {90, 46}, {90, 60}, {98, 60}}, color = {255, 204, 51}, pattern = LinePattern.Solid, thickness = 0.5));
  connect(TDryBul_in, weaBus.TDryBul) annotation(
    Line(points = {{-114, 106}, {-80, 106}, {-80, 0}}, color = {0, 0, 127}, pattern = LinePattern.Solid));
  connect(HDifHor_in, weaBus.HDifHor) annotation(
    Line(points = {{-114, 86}, {-80, 86}, {-80, 0}}, color = {0, 0, 127}, pattern = LinePattern.Solid));
  connect(cloTim_in, weaBus.cloTim) annotation(
    Line(points = {{-114, 66}, {-80, 66}, {-80, 0}}, color = {0, 0, 127}, pattern = LinePattern.Solid));
  connect(solTim_in, weaBus.solTim) annotation(
    Line(points = {{-114, 46}, {-80, 46}, {-80, 0}}, color = {0, 0, 127}, pattern = LinePattern.Solid));
  connect(relHum_in, weaBus.relHum) annotation(
    Line(points = {{-114, 26}, {-80, 26}, {-80, 0}}, color = {0, 0, 127}, pattern = LinePattern.Solid));
  connect(HDirNor_in, weaBus.HDirNor) annotation(
    Line(points = {{-114, 6}, {-80, 6}, {-80, 0}}, color = {0, 0, 127}, pattern = LinePattern.Solid));
  connect(lat_in, weaBus.lat) annotation(
    Line(points = {{-114, -14}, {-80, -14}, {-80, 0}}, color = {0, 0, 127}, pattern = LinePattern.Solid));
  connect(solZen_in, weaBus.solZen) annotation(
    Line(points = {{-114, -34}, {-80, -34}, {-80, 0}}, color = {0, 0, 127}, pattern = LinePattern.Solid));
  connect(winSpe_in, weaBus.winSpe) annotation(
    Line(points = {{-114, -54}, {-80, -54}, {-80, 0}}, color = {0, 0, 127}, pattern = LinePattern.Solid));
  connect(HHorIR_in, weaBus.HHorIR) annotation(
    Line(points = {{-114, -74}, {-80, -74}, {-80, 0}}, color = {0, 0, 127}, pattern = LinePattern.Solid));
  connect(lon_in, weaBus.lon) annotation(
    Line(points = {{-114, -94}, {-80, -94}, {-80, 0}}, color = {0, 0, 127}, pattern = LinePattern.Solid));
  connect(winDir_in, weaBus.winDir) annotation(
    Line(points = {{-114, -114}, {-80, -114}, {-80, 0}}, color = {0, 0, 127}, pattern = LinePattern.Solid));
  connect(TBlaSky_in, weaBus.TBlaSky) annotation(
    Line(points = {{-94, -134}, {-95, -134}, {-95, -114}, {-80, -114}, {-80, 0}}, color = {0, 0, 127}, pattern = LinePattern.Solid));
  connect(nOpa_in, weaBus.nOpa) annotation(
    Line(points = {{-74, -134}, {-80, -134}, {-80, 0}}, color = {0, 0, 127}, pattern = LinePattern.Solid));
  connect(HGloHor_in, weaBus.HGloHor) annotation(
    Line(points = {{-54, -134}, {-80, -134}, {-80, 0}}, color = {0, 0, 127}, pattern = LinePattern.Solid));
  connect(TDewPoi_in, weaBus.TDewPoi) annotation(
    Line(points = {{-34, -134}, {-80, -134}, {-80, 0}}, color = {0, 0, 127}, pattern = LinePattern.Solid));
  connect(solAlt_in, weaBus.solAlt) annotation(
    Line(points = {{-14, -134}, {-80, -134}, {-80, 0}}, color = {0, 0, 127}, pattern = LinePattern.Solid));
  connect(nTot_in, weaBus.nTot) annotation(
    Line(points = {{6, -134}, {-80, -134}, {-80, 0}}, color = {0, 0, 127}, pattern = LinePattern.Solid));
  connect(TWetBul_in, weaBus.TWetBul) annotation(
    Line(points = {{26, -134}, {-80, -134}, {-80, 0}}, color = {0, 0, 127}, pattern = LinePattern.Solid));
  connect(solDec_in, weaBus.solDec) annotation(
    Line(points = {{46, -134}, {-80, -134}, {-80, 0}}, color = {0, 0, 127}, pattern = LinePattern.Solid));
  connect(pAtm_in, weaBus.pAtm) annotation(
    Line(points = {{66, -134}, {-80, -134}, {-80, 0}}, color = {0, 0, 127}, pattern = LinePattern.Solid));
  connect(ceiHei_in, weaBus.ceiHei) annotation(
    Line(points = {{86, -134}, {-80, -134}, {-80, 0}}, color = {0, 0, 127}, pattern = LinePattern.Solid));
  connect(solHouAng_in, weaBus.solHouAng) annotation(
    Line(points = {{106, -134}, {-80, -134}, {-80, 0}}, color = {0, 0, 127}, pattern = LinePattern.Solid));
  annotation(
    Documentation(info = "<html>
<p>
This block enables the reading of weather measurements and their meta-data by an external
program without the need to explicitly propagate the signal to a top-level model.
This block utilizes a number of pre-configured instances of
<a href=\"modelica://IDEAS.Utilities.IO.SignalExchange.Read\">
IDEAS.Utilities.IO.SignalExchange.Read</a>
</p>
<h4>Typical use and important parameters</h4>
<p>
This block is typically used by the BOPTEST framework
(see <a href=\"https://github.com/ibpsa/project1-boptest\">BOPTEST</a>)
to identify and read weather measurements by test
controllers. It is used in combination with a dedicated parser to perform
this task (see <a href=\"https://github.com/ibpsa/project1-boptest/tree/master/parsing\">Parser Code</a>).
</p>
</html>", revisions = "<html>
<ul>
<li>
October 2, 2020 by David Blum:<br/>
First implementation.
See <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/1402\">#1402</a>.
</li>
</ul>
</html>"),
    Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(lineColor = {0, 0, 159}, fillColor = {255, 255, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Rectangle(pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, extent = {{-52, 28}, {-48, -80}}), Polygon(fillColor = {255, 170, 85}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, points = {{-52, 82}, {-54, 26}, {22, 20}, {40, 14}, {62, -6}, {70, -4}, {74, 4}, {48, 32}, {20, 58}, {-52, 82}}), Ellipse(fillColor = {244, 125, 35}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, extent = {{-64, 82}, {-42, 26}})}),
    Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -120}, {120, 120}})));
end WeatherStation;