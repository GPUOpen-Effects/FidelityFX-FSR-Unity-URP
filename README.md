# Description
AMD FidelityFX Super Resolution (FSR) is an open source, high-quality solution for producing high resolution frames from lower resolution inputs. It uses a collection of cutting-edge algorithms with a particular emphasis on creating high-quality edges, giving large performance improvements compared to rendering at native resolution directly.  FSR enables “practical performance” for costly render operations, such as hardware ray tracing.

# Version
While this patch file targets URP 10.6.0 in particular, you can still use this patch for other versions (including newer) with a few careful changes.

# Integration Method

## Method 1. git apply
Example:
I have my project in:
`E:/Unity/The Game/`

I should put the `.patch` file in `E:/Unity/The Game/library/PackageCache`
I should make a console and write
```
cd E:/Unity/The Game/library/PackageCache
git apply FSR1.0-For-URP10.6.0-Patch.patch
```

## Method 2. manually merge
Use a normal editor to open this patch file. Look through all the diffs, and merge it into your local URP code manually.

# Usage
After toggling on the Camera post-processing, the option for `AMD FSR 1.0` will appear below it. You can choose different FSR modes according to your requirements.

# NOTE
At present, if you turn on FSR, the anti-aliasing (MSAA) setting will be set to 8X by default. You can change this to a lower MSAA level or other anti-aliasing solution. However, keep in mind that FSR 1.0 requires an anti-aliasing process before it can work. This is the MSAA setting: `settings.msaaSampleCount = 8;`

Mobile platforms (including those in standalone VR headsets) are not guaranteed to work due to the current compute shader implementation.
