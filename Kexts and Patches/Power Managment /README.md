## Power Managment

Use **SSDT-PM.aml** generated with **ssdtPRGen.sh** by Piker-Alpha following RehabMan's native PM guide. Also enable **AppleIntelCPUPM=true** and **KernelLapic=true**

**NOTE: Recomended to run these to disable hibernation and prevent problems (RehabMan's reccomendation)**

```bash
sudo pmset -a hibernatemode 0
sudo rm /var/vm/sleepimage
sudo mkdir /var/vm/sleepimage
sudo pmset -a standby 0
sudo pmset -a autopoweroff 0
```