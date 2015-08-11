#!/usr/bin/env bash

# install packer to the system user via ubuntu update-alternatives,

BIN="/usr/bin"
PKR="/opt/packer"
PKR_VER="0.8.2"
PKR_BIN="$PKR/$PKR_VER"
PRIORITY_LEVEL=1200

update-alternatives --install $BIN/packer packer $PKR_BIN/packer $PRIORITY_LEVEL \
 --slave $BIN/packer-builder-amazon-chroot packer-builder-amazon-chroot $PKR_BIN/packer-builder-amazon-chroot \
 --slave $BIN/packer-builder-amazon-ebs packer-builder-amazon-ebs $PKR_BIN/packer-builder-amazon-ebs \
 --slave $BIN/packer-builder-amazon-instance packer-builder-amazon-instance $PKR_BIN/packer-builder-amazon-instance \
 --slave $BIN/packer-builder-digitalocean packer-builder-digitalocean $PKR_BIN/packer-builder-digitalocean \
 --slave $BIN/packer-builder-docker packer-builder-docker $PKR_BIN/packer-builder-docker \
 --slave $BIN/packer-builder-file packer-builder-file $PKR_BIN/packer-builder-file \
 --slave $BIN/packer-builder-googlecompute packer-builder-googlecompute $PKR_BIN/packer-builder-googlecompute \
 --slave $BIN/packer-builder-null packer-builder-null $PKR_BIN/packer-builder-null \
 --slave $BIN/packer-builder-openstack packer-builder-openstack $PKR_BIN/packer-builder-openstack \
 --slave $BIN/packer-builder-parallels-iso packer-builder-parallels-iso $PKR_BIN/packer-builder-parallels-iso \
 --slave $BIN/packer-builder-parallels-pvm packer-builder-parallels-pvm $PKR_BIN/packer-builder-parallels-pvm \
 --slave $BIN/packer-builder-qemu packer-builder-qemu $PKR_BIN/packer-builder-qemu \
 --slave $BIN/packer-builder-virtualbox-iso packer-builder-virtualbox-iso $PKR_BIN/packer-builder-virtualbox-iso \
 --slave $BIN/packer-builder-virtualbox-ovf packer-builder-virtualbox-ovf $PKR_BIN/packer-builder-virtualbox-ovf \
 --slave $BIN/packer-builder-vmware-iso packer-builder-vmware-iso $PKR_BIN/packer-builder-vmware-iso \
 --slave $BIN/packer-builder-vmware-vmx packer-builder-vmware-vmx $PKR_BIN/packer-builder-vmware-vmx \
 --slave $BIN/packer-post-processor-atlas packer-post-processor-atlas $PKR_BIN/packer-post-processor-atlas \
 --slave $BIN/packer-post-processor-compress packer-post-processor-compress $PKR_BIN/packer-post-processor-compress \
 --slave $BIN/packer-post-processor-docker-import packer-post-processor-docker-import $PKR_BIN/packer-post-processor-docker-import \
 --slave $BIN/packer-post-processor-docker-push packer-post-processor-docker-push $PKR_BIN/packer-post-processor-docker-push \
 --slave $BIN/packer-post-processor-docker-save packer-post-processor-docker-save $PKR_BIN/packer-post-processor-docker-save \
 --slave $BIN/packer-post-processor-docker-tag packer-post-processor-docker-tag $PKR_BIN/packer-post-processor-docker-tag \
 --slave $BIN/packer-post-processor-vagrant packer-post-processor-vagrant $PKR_BIN/packer-post-processor-vagrant \
 --slave $BIN/packer-post-processor-vagrant-cloud packer-post-processor-vagrant-cloud $PKR_BIN/packer-post-processor-vagrant-cloud \
 --slave $BIN/packer-post-processor-vsphere packer-post-processor-vsphere $PKR_BIN/packer-post-processor-vsphere \
 --slave $BIN/packer-provisioner-ansible-local packer-provisioner-ansible-local $PKR_BIN/packer-provisioner-ansible-local \
 --slave $BIN/packer-provisioner-chef-client packer-provisioner-chef-client $PKR_BIN/packer-provisioner-chef-client \
 --slave $BIN/packer-provisioner-chef-solo packer-provisioner-chef-solo $PKR_BIN/packer-provisioner-chef-solo \
 --slave $BIN/packer-provisioner-file packer-provisioner-file $PKR_BIN/packer-provisioner-file \
 --slave $BIN/packer-provisioner-powershell packer-provisioner-powershell $PKR_BIN/packer-provisioner-powershell \
 --slave $BIN/packer-provisioner-puppet-masterless packer-provisioner-puppet-masterless $PKR_BIN/packer-provisioner-puppet-masterless \
 --slave $BIN/packer-provisioner-puppet-server packer-provisioner-puppet-server $PKR_BIN/packer-provisioner-puppet-server \
 --slave $BIN/packer-provisioner-salt-masterless packer-provisioner-salt-masterless $PKR_BIN/packer-provisioner-salt-masterless \
 --slave $BIN/packer-provisioner-shell packer-provisioner-shell $PKR_BIN/packer-provisioner-shell \
 --slave $BIN/packer-provisioner-shell-local packer-provisioner-shell-local $PKR_BIN/packer-provisioner-shell-local \
 --slave $BIN/packer-provisioner-windows-restart packer-provisioner-windows-restart $PKR_BIN/packer-provisioner-windows-restart \
 --slave $BIN/packer-provisioner-windows-shell packer-provisioner-windows-shell $PKR_BIN/packer-provisioner-windows-shell
