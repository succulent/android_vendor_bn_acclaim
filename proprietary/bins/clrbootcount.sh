#!/system/bin/sh
##################################################################################
#
# File          clrbootcount.sh
# Description	Clear the bootcount variable to 0 on successful boot
#
## 
# Run potential hook first.

# Zero the boot count
dd if=/dev/zero of=/rom/devconf/BootCnt bs=1c count=4
dd if=/dev/zero of=/bootdata/BootCnt bs=1 count=4
dd if=/dev/zero of=/bootdata/BCB bs=1 count=1088
