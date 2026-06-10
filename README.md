### Device specific configuration to build AOSP Android 14 for Radxa Rock 4D (Rockchip RK3576)

***

NOTE: AOSP Radxa Rock 4D Custom `android-14.0.0_r28` branch is not maintained. This branch was only created for backup purposes during Android QPR update. Using this branch is not supported. Consider using newer AOSP versions.

### How to build (Ubuntu 22.04 LTS):

1. Establish [Android build environment](https://source.android.com/docs/setup/start/requirements).

2. Install additional packages:

```
sudo apt-get install bc coreutils dosfstools e2fsprogs fdisk kpartx mtools ninja-build pkg-config python3-pip
sudo pip3 install meson mako jinja2 ply pyyaml dataclasses
```

3. Initialize repo:

```
repo init -u https://android.googlesource.com/platform/manifest -b android-14.0.0_r28
curl -o .repo/local_manifests/manifest_rk3576_rock_4d_qnm.xml -L https://raw.githubusercontent.com/quangnm145/aosp-manifest/refs/heads/rock4d-android-14.0.0_r22/manifest_rk3576_rock_4d_qnm.xml --create-dirs
```

4. Sync source code:

```
repo sync
```

5. Setup Android build environment:

```
. build/envsetup.sh
```

6. Select the device:

```
lunch rk3576_rock_4d_qnm-userdebug
```

7. Compile:

```
make bootimage systemimage vendorimage -j$(nproc)
```