@echo off

echo Starting Oculus...

net start OVRService
timeout /t 1 /nobreak > nul
cd "C:\Program Files\Oculus\Support\oculus-client\"
start /b OculusClient.exe > nul

echo Press any key to start killing Oculus.
pause

echo Killing Oculus...
net stop OVRService
timeout /t 1 /nobreak > nul
taskkill /f /im OculusClient.exe > nul
taskkill /f /im OculusVR.exe > nul
taskkill /f /im OVRRedir.exe > nul
taskkill /f /im OVRServiceLauncher.exe > nul
taskkill /f /im OVRServer_x64.exe > nul
taskkill /f /im oculus-platform-runtime.exe > nul
taskkill /f /im oculus-overlays.exe > nul
timeout /t 3 /nobreak > nul
taskkill /f /im OculusClient.exe > nul
taskkill /f /im OculusVR.exe > nul
taskkill /f /im OVRRedir.exe > nul
taskkill /f /im OVRServiceLauncher.exe > nul
taskkill /f /im OVRServer_x64.exe > nul
taskkill /f /im oculus-platform-runtime.exe > nul
taskkill /f /im oculus-overlays.exe > nul

echo:
echo Succesfully closed Oculus.
pause