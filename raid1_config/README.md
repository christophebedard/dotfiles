# RAID1 config

Setup of a RAID1 array (mirrored disks).

## Initial setup

From blank/empty drives, follow [this](https://www.digitalocean.com/community/tutorials/how-to-create-raid-arrays-with-mdadm-on-ubuntu-18-04#creating-a-raid-1-array) guide.

## Re-configuration

If the array has already been created (and the disks mirrored) and needs to be re-configured, follow steps in sub-section _Saving the Array Layout_:

1. Save the array config by adding this to `/etc/mdadm/mdadm.conf` (see [`mdadm.conf`](./mdadm.conf)):

```
# definitions of existing MD arrays
ARRAY /dev/md0 metadata=1.2 name=chrisnux:0 UUID=85fa598c:352feb36:4981ec85:1e9f3012
```

2. Update initramfs:

```
sudo update-initramfs -u
```

3. To get it to automatically mount at boot, add this to `/etc/fstab` (see [`fstab`](./fstab)):

```
# raid1 volume
/dev/md0 /media/chris/raid1vol ext4 defaults,nofail,discard 0 0
```

## Loading after an OS reinstall

After reinstalling Ubuntu, simply run the script and the array should be detected and mounted right away:

```
./setup_raid1vol.sh
```
