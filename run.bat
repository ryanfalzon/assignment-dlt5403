@echo off

rem Arduino Package
cd ArduinoPackage
call npm install
cd..

rem Client Application
cd ClientApplication
call npm install
start run.bat
cd..

rem Client Server
cd ClientServer
call npm install
start run.bat
cd..

rem Distributor Server
cd DistributorServer
call npm install
start run.bat
cd..

rem Driver Server
cd DriverServer
call npm install
start run.bat

exit