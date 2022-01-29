# Description
AMD FidelityFX Super Resolution (FSR) is an open source, high-quality solution for producing high resolution frames from lower resolution inputs. It uses a collection of cutting-edge algorithms with a particular emphasis on creating high-quality edges, giving large performance improvements compared to rendering at native resolution directly.  FSR enables “practical performance” for costly render operations, such as hardware ray tracing.

# Version
While this patch file targets URP 10.6.0 in particular, you can still use this patch for other versions (including newer) with a few careful changes, you could try method 1 and 2 for other versions, but will surely need using the method 3.

# Integration Method

> For method 1 and 2 you need to have [git](https://git-scm.com/downloads) installed

## Method 1. running `installPatch.bat`

Download the `installPatch.bat` file and put it into the root folder of your unity project, then run it by double clicking

## Method 2. git apply and curl

Example:
I have my project in: `E:\Unity\The Game\`

```
cd /D E:\Unity\The Game\library\PackageCache
curl "https://raw.githubusercontent.com/GPUOpen-Effects/FidelityFX-FSR-Unity-URP/c96f5b0843cd56132693953f190e54eb93b58849/FSR1.0-For-URP10.6.0-Patch.patch" | git apply
```

## Method 3. git apply
Example:
I have my project in: `E:\Unity\The Game\`

I should put the `.patch` file in `E:/Unity/The Game/library/PackageCache`.  
I should make a console and write.  
```
cd /D E:\Unity\The Game\library\PackageCache
git apply FSR1.0-URP10.6.0.patch
```

## Method 4. manually merge
Use a normal editor to open this patch file. Look through all the diffs, and merge it into your local URP code manually. It's in

# Usage
After toggling on the Camera post-processing, the option for `AMD FSR 1.0` will appear below it. You can choose different FSR modes according to your requirements.

# NOTE
At present, if you turn on FSR, the anti-aliasing (MSAA) setting will be set to 8X by default. You can change this to a lower MSAA level or other anti-aliasing solution. However, keep in mind that FSR 1.0 requires an anti-aliasing process before it can work. This is the MSAA setting: `settings.msaaSampleCount = 8;`

Mobile platforms (including those in standalone VR headsets) are not guaranteed to work due to the current compute shader implementation.
