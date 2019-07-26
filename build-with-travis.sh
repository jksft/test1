mkdir /build && cd /build
repo init -q -u git://github.com/CyanogenMod/android.git -b cm-12.1 && repo sync -j32
rm -rf .repo && find . -type d -name ".git" -execdir rm -rf {} \;
mkdir -p device/oppo/A37 && cp -r /sources/* device/oppo/A37
source build/envsetup.sh && lunch cm_A37-user && make -j8 bootimage
cp /build/out/target/product/A37/boot.img /sources/boot.img
