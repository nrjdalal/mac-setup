brew install qemu
brew install libffi gettext glib pkg-config autoconf automake pixman ninja

git clone https://github.com/qemu/qemu && cd qemu
git checkout v6.0.0
curl https://patchwork.kernel.org/series/485309/mbox/ | git am --exclude=MAINTAINERS

mkdir build
cd build
../configure --target-list=aarch64-softmmu --disable-gnutls
make -j8
sudo make install
