# addvmtobackup

Simple bash shell script to add a virtual machine (LXC or KVM) to proxmox backup job.
Just download the script, place it into /usr/local/bin, change permission to +x (chmod +x /usrlocal/bin/addvmtobackup) and than execute:
/usr/local/bin/addvmtobackup VMID 
(Change VMID to the id of the vms which yout wish to include into backup job)
