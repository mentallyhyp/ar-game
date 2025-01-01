# Android AR Game Setup Guide

## 1. Project Settings

### Build Settings
1. Switch Platform to Android
   - File > Build Settings > Android > Switch Platform
   - Minimum API Level: Android 7.0 (API Level 24)
   - Target API Level: Latest installed

2. Player Settings (Edit > Project Settings > Player)
   ```
   Other Settings:
   - Package Name: com.yourcompany.argame
   - Scripting Backend: IL2CPP
   - Target Architectures: ARM64
   - Allow 'unsafe' Code: true

   XR Plug-in Management:
   - Initialize XR on Startup: true
   - ARCore: true
   ```

### Quality Settings
```
Quality Settings:
- Set mobile-appropriate defaults
- Disable unnecessary post-processing
- Limit texture quality
- Enable batching
```

### Input System
1. Install Input System package
2. Enable in Project Settings
3. Configure input actions for:
   - Touch input
   - AR raycast
   - UI interaction

## 2. Required Packages

Install via Package Manager:
```
- AR Foundation (5.0 or later)
- ARCore XR Plugin
- XR Plugin Management
- Input System
- TextMeshPro
- Universal RP (optional for better graphics)
```

## 3. AR Foundation Setup

1. AR Session Setup:
```
Create "AR Session" GameObject:
- AR Session component
- AR Session Origin component
- AR Camera
- AR Input Manager
- AR Plane Manager
- AR Raycast Manager
```

2. Camera Setup:
```
AR Camera GameObject:
- AR Camera component
- AR Camera Background
- Audio Listener
- Target Frame Rate: 60
```

3. Plane Detection:
```
AR Session Origin:
- AR Plane Manager
- Plane Prefab assigned
- Detection Mode: Horizontal
```

## 4. Audio Setup

1. Create Audio Mixer:
```
Assets > Create > Audio Mixer
Three groups:
- Master
- Music
- SFX

Parameters:
- MasterVolume
- MusicVolume
- SFXVolume
```

2. Create Sound Effects:
```
Required sounds:
- Target hit
- Target spawn
- Power-up collect
- Power-up active
- UI clicks
- Game start/end
- Achievement unlock
```

## 5. Performance Optimization

1. Graphics Settings:
```
- Use mobile-optimized materials
- Limit particle effects
- Enable GPU instancing
- Use texture compression
```

2. Asset Optimization:
```
- Compress textures
- Use appropriate texture formats
- Optimize meshes
- Use LODs where necessary
```

3. Code Optimization:
```
- Use object pooling
- Minimize garbage collection
- Cache component references
- Use efficient data structures
```

## 6. Android Manifest Settings

Add to Plugins/Android/AndroidManifest.xml:
```xml
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android">
    <application>
        <meta-data android:name="com.google.ar.core" android:value="required" />
    </application>
    <uses-permission android:name="android.permission.CAMERA" />
    <uses-feature android:name="android.hardware.camera.ar" android:required="true"/>
    <uses-feature android:name="android.hardware.camera" android:required="true"/>
</manifest>
```

## 7. Testing

1. Development Testing:
```
- Use Unity Remote
- Test on multiple devices
- Test different Android versions
- Monitor performance metrics
```

2. AR Testing:
```
- Test in different lighting
- Test plane detection
- Test tracking stability
- Test different surface types
```

## 8. Build and Deploy

1. Build Settings:
```
- Development Build (for testing)
- IL2CPP Scripting Backend
- ARM64 Architecture
- Appropriate compression
```

2. Final Checks:
```
- All scenes in build
- Correct version number
- All required assets included
- Permissions configured
```

## Common Issues and Solutions

1. AR Not Working:
```
- Check ARCore installed
- Verify permissions
- Check device compatibility
- Verify AR session initialization
```

2. Performance Issues:
```
- Monitor frame rate
- Check garbage collection
- Reduce draw calls
- Optimize assets
```

3. Build Issues:
```
- Clean build folder
- Verify Android SDK/NDK
- Check manifest settings
- Update Gradle if needed
```
