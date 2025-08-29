# Add Static DNS On Interface UP

- Create or download script.ps1
  - Change network name and IP
  - Store it somewhere locally
- Create task via taskschd.msc
  - Trigger: OnEvent - Microsoft-Windows-NetworkProfile/Operational - Event Id 10000
  - Actions: Program - `powershell`. Arguments - `-ExecutionPolicy Bypass -WindowStyle hidden -File "C:\path\to\script.ps1"`
  - Change `C:\path\to\script.ps1` path with yours!
  - __Run when user logged in or not__ check - or powershell window will appear every time
 
## This script initially used for zerotier on windows, because it's DNS setting seems to be broken.
