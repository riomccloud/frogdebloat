ℹ **Archived since there are better options. Particularly, I like [Shizuku](https://github.com/RikkaApps/Shizuku) + [Canta](https://github.com/samolego/Canta).**

# FrogDebloat
Small batch and bash tool to debloat Android devices using a comprehensive database of bloatware.

⚠️ **WARNING:** *Although I do my best to keep the tool as safe as possible, I am not responsible for any damage that may be caused by incorrect use of the application. Make backups before using the script to avoid headaches. =)*

## Details
The script's goal is to provide an efficient way of disabling tons of unwanted applications, regardless if the Android device is new, old, from a well-known manufacturer, an underground one, or the country it was manufactured.

FrogDebloat has a custom database of bloatware composed from open source projects like [AppManager](https://github.com/MuntashirAkon/AppManager), [Universal Android Debloater](https://github.com/0x192/universal-android-debloater) and [Android Debloat List](https://github.com/MuntashirAkon/android-debloat-list), alongside its own bloatware list. All database applications are safe to disable and are unlikely to cause serious problems.

The rule for whether an app can be added to the database is straight to the point: **if disabling it doesn't make the device go into a boot loop, it's bloatware**. After all, if you need one or more applications that are part of the database, just enable it again! 😉

There are 3 operation modes: **Android 5.0+** (disable apps for the user only with ``pm disable-user``); **Android 4.4** (disable apps with ``pm block``) and; **Android 4.3-** (disable apps globally with ``pm disable``, needs root). All modes automatically force apps to stop and clear its data automatically. There is also options to enable an entire bloatware group, if you need to check something.

## Features
* Enables and disables bloatware groups based on a huge database
  - AOSP
  - Google
  - Mobile carriers (France, Germany, Portugal and USA)
  - Other bloatware (miscellaneous)
  - Processors (Mediatek and Qualcomm)
  - Manufacturers (ASUS, Acer, Huawei, LG, Motorola, Multi, Nokia, OnePlus, Oppo, Samsung, Sony, Xiaomi and ZTE)
  - Third party companies (Amazon, Baidu, Meta and Microsoft)
  - Google integration (Play Services, Play Store and other apps required to Google account login)
* Supports every Android version (4.4+ rootless, 4.3- with root only)
* Uninstall all apps that are uninstallable for the user (freeing up storage space)
* Enables or disables specific apps based in the package name

## How to use (download and install)

1. (OPTIONAL) Perform a hard reset on the device. Finish the OOBEE, but **do not** connect to the internet
2. Install [Android Debug Bridge](https://developer.android.com/studio/releases/platform-tools) (in the system path or in the portable mode)
3. Run the script
   - **Windows:** download the latest version from [Releases](https://github.com/riomccloud/frogdebloat/releases/latest), extract and run ``start.bat``
   - **Linux:** *coming soon*
4. (OPTIONAL) Execute ``[y] Uninstall all the uninstallable apps`` and then disable every bloatware group, one at a time

## To-do
- [ ] Create bash version for Linux distributions
- [ ] Speed up application activation and deactivation process, comparing the apps that exist in the device to the database and only changing it
- [ ] Fix option ``[y] Uninstall all the uninstallable apps`` that don't work with Android 4.4 and lower

## Contribute
* Report bugs and suggest improvements through Issues, Pull Requests and Discussions
* Add new bloatware entries through Issues
* Translate the script to other languages through Pull Requests
