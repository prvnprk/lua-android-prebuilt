# Lua for Android (Prebuilt Static Libraries)

Prebuilt static libraries of **Lua 5.4.8** for Android platforms, along with the associated build configuration using the Android NDK's `ndk-build` system.  

---


## Build Instructions

To build using the Android NDK, run the following command from the project root:

```bash
ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=Android.mk APP_ABI=all APP_PLATFORM=android-<api-level>
