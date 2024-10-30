echo off
adb reboot recovery
echo --------------------------------------------------------------------------------------------------------------------------------
echo Now it's time to factory reset phone and have adb mode enabled in recovery. Before this step make sure you have all data backup.
echo --------------------------------------------------------------------------------------------------------------------------------
pause
adb reboot bootloader
fastboot flash flash dtbo firmware\dtbo.img
fastboot flash vendor_boot firmware\vendor_boot.img
fastboot flash boot firmware\boot.img
echo ------------------------------------------------------------
echo When you get to the recovery mode press any key to continue.
echo ------------------------------------------------------------
pause
adb -d sideload lineage.zip
adb -d sideload gapps.zip
echo ------------------------------------------------------------------
echo Installer finished installing LineageOS. Continue setup on device.
echo ------------------------------------------------------------------
exit