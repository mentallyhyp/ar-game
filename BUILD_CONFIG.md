# Android Build Configuration Guide

## Project Settings

1. Player Settings (Edit > Project Settings > Player):
```
Company Name: [Your Company]
Product Name: AR Game
Version: 1.0

Android Settings:
- Package Name: com.yourcompany.argame
- Minimum API Level: Android 7.0 (API Level 24)
- Target API Level: Android 13.0 (API Level 33)
- Install Location: Auto
- Write Permission: External (SDCard)
- Internet Access: Required
```

2. Graphics Settings:
```
- Color Space: Linear
- Graphics API: OpenGLES3
- Multithreaded Rendering: Enabled
- Static Batching: Enabled
- Dynamic Batching: Enabled
```

3. Quality Settings:
```
- Pixel Light Count: 1
- Texture Quality: Half Res
- Anisotropic Textures: Per Texture
- Anti Aliasing: Disabled
- Soft Particles: Disabled
- Realtime Reflection Probes: Disabled
- Billboards Face Camera Position: Enabled
```

4. XR Settings:
```
- Initialize XR on Startup: Checked
- ARCore: Enabled
```

## Build Process

1. Switch Platform:
```
File > Build Settings > Android > Switch Platform
```

2. Scene Setup:
```
- Add all necessary scenes
- Set correct build order
- Main scene should be first
```

3. Development Build Options:
```
- Development Build: Checked (for testing)
- Autoconnect Profiler: Optional
- Script Debugging: Optional
```

4. Build System:
```
- Gradle
- Custom Gradle Template: Enabled
- Custom Main Gradle Template: Enabled
- Custom Launcher Gradle Template: Enabled
```

## Android Manifest Settings

1. Required Permissions:
```xml
<uses-permission android:name="android.permission.CAMERA" />
<uses-permission android:name="android.permission.INTERNET" />
<uses-feature android:name="android.hardware.camera.ar" required="true"/>
<uses-feature android:glEsVersion="0x00030000" android:required="true" />
```

2. ARCore Settings:
```xml
<meta-data android:name="com.google.ar.core" android:value="required" />
```

## Performance Optimization

1. Texture Settings:
```
- Max Size: 2048
- Format Android: ASTC
- Compression: Normal Quality
- Generate Mip Maps: Enabled
```

2. Mesh Settings:
```
- Mesh Compression: Medium
- Optimize Mesh Data: Enabled
- Keep Quad Indices: Disabled
```

3. Audio Settings:
```
- Format: Vorbis
- Quality: 70
- Load Type: Decompress on Load
```

## Testing

1. Development Device Requirements:
```
- ARCore supported device
- Android 7.0 or higher
- Developer options enabled
- USB debugging enabled
```

2. Build Testing:
```
1. Create development build
2. Install on test device
3. Check AR functionality
4. Verify permissions
5. Test performance
```

## Common Issues

1. AR Not Working:
```
- Verify ARCore is installed
- Check camera permissions
- Verify device compatibility
```

2. Performance Issues:
```
- Check quality settings
- Verify batching settings
- Monitor draw calls
- Check texture compression
```

3. Build Failures:
```
- Verify Android SDK setup
- Check Gradle settings
- Validate package name
- Check minimum API level
```

## Final Checklist

1. Before Building:
```
- All scenes added to build
- Correct platform selected
- Required SDKs installed
- Permissions configured
- Quality settings optimized
```

2. After Building:
```
- Test on target device
- Verify AR tracking
- Check performance
- Validate all features
```
