set -x
cd $home
cd vmware-tools-distrib/lib/modules/source
sudo tar xf vmhgfs.tar
#sudo wget https://raw.github.com/rasa/vmware-tools-patches/master/patches/vmhgfs/vmhgfs-d_count-kernel-3.11-tools-9.6.0.patch
sudo patch -p0 <vmhgfs-d_count-kernel-3.11-tools-9.6.0.patch
sudo mv vmhgfs.tar vmhgfs.orig.tar
sudo tar cf vmhgfs.tar vmhgfs-only
cd $home
cd vmware-tools-distrib
sudo ./vmware-install.pl --clobber-kernel-modules=vmhgfs
set +x