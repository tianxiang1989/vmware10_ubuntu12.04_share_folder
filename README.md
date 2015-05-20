vmware10_ubuntu12.04_share_folder
==================
**version:**
    vmware:10.0.0 build-1295980  
	ubuntu：12.04LTS

错误现象：	
在安装VMware-Tools的时候报错，之后重启后在/mnt/hgfs中无共享文件夹。	
报错信息如下：	
![error_screenshot](https://github.com/tianxiang1989/vmware10_ubuntu12.04_share_folder/raw/master/screenshots/error.png)

解决方法：

1. 将vmware-tools解压到$home下的Downloads里
2. 拷贝vmhgfs-d_count-kernel-3.11-tools-9.6.0.patch到$home下的Downloads里
3. 拷贝fix.sh（fox改成本机实际的用户名）到$home下的Downloads里
4. 给fix.sh加上执行权限
5. 之后执行fix.sh，一路默认值，然后重启电脑即可在/mnt/hgfs中看到共享的文件夹。



