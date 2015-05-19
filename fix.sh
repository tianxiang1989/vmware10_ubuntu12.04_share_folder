set -x
cd /home/fox/Downloads/vmware-tools-distrib/lib/modules/source
sudo tar xf vmhgfs.tar
sudo patch -p0 </home/fox/Downloads/vmware-tools-distrib/vmhgfs-d_count-kernel-3.11-tools-9.6.0.patch
sudo mv vmhgfs.tar vmhgfs.orig.tar
sudo tar cf vmhgfs.tar vmhgfs-only
cd /home/fox/Downloads/vmware-tools-distrib
sudo ./vmware-install.pl --clobber-kernel-modules=vmhgfs
set +x
