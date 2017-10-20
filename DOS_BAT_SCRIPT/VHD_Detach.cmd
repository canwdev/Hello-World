@echo off 
echo select vdisk file="d:\vhd\test.vhd" >vhdsel 
echo detach vdisk>>vhdsel 
echo list disk>>vhdsel 
diskpart /s vhdsel 
del /f /q vhdsel 
exit