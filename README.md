
## System files

These files live outside `~/` and must be created manually.

### `/etc/modprobe.d/alc897.conf`
Fixes ALC897 front panel jack detection on ASUS B550M-A with Realtek ALC897:
```
options snd-hda-intel jackpoll_ms=500 model=auto
```
After creating, run `sudo mkinitcpio -P` to rebuild initramfs.
