## Mount on Boot

Install:

```bash
wget https://raw.githubusercontent.com/fire1ce/VM-mount-shared-folders/master/mount-shared-folders.sh
sudo chmod +x mount-shared-folders.sh
sudo mv mount-shared-folders.sh /usr/local/bin/mount-shared-folders
```

Install at Crontab

```bash
@reboot /usr/local/bin/mount-shared-folders
```
