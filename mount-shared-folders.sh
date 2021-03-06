#!/bin/bash

vmware-hgfsclient | while read folder; do
  echo "[i] Mounting ${folder}   (/root/${folder})"
  mkdir -p "/root/${folder}"
  umount -f "/root/${folder}" 2>/dev/null
  vmhgfs-fuse -o allow_other -o auto_unmount ".host:/${folder}" "/root/${folder}"
done

sleep 2s
