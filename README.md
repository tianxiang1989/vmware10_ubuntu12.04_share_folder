vmware10_ubuntu12.04_share_folder
==================
###version:
    vmware:10.0.0 build-1295980  
	ubuntu：12.04LTS

###BUG：
it's report an error when install VMware-Tools,then after reboot Ubuntu we can't see the share foler in "/mnt/hgfs".
#####Screenshot：
![error_screenshot](https://github.com/tianxiang1989/vmware10_ubuntu12.04_share_folder/raw/master/screenshots/error.png)

###Solution：
1. unpack "vmware-tools"to "$home/Downloads".
2. copy "vmhgfs-d_count-kernel-3.11-tools-9.6.0.patch" to "$home/Downloads".
3. copy "fix.sh（rename "fox" to your machine's name）to "$home/Downloads".
4. chmod +x fix.sh
5. execute fix.sh，and then reboot Ubuntu,you will see the share foler in "/mnt/hgfs".

