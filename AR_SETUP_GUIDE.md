# AR Game Setup Guide for Android

## Required Unity Settings

1. Switch Platform to Android:
```
File > Build Settings > Android > Switch Platform
```

2. Install Required Packages:
```
Window > Package Manager:
- AR Foundation (5.0.5 or later)
- ARCore XR Plugin (5.0.5 or later)
- Input System (1.6.3 or later)
- TextMeshPro (3.0.6 or later)
```

3. Configure Project Settings:
```
Edit > Project Settings:

Player Settings:
- Other Settings:
  - Rendering: OpenGLES3
  - Minimum API Level: Android 7.0 (API 24)
  - Target API Level: Android 13.0 (API 33)
  - Install Location: Auto
  - Write Permission: External (SDCard)
  
- XR Plug-in Management:
  - Initialize XR on Startup: Checked
  - ARCore: Enabled
  
- Quality Settings:
  - Set to recommended mobile settings from QUALITY_SETTINGS.md
```

## Scene Setup

1. Create AR Session:
```
Hierarchy > Create > XR > AR Session
- Add ARSession component
- Add ARInputManager component
```

2. Create AR Session Origin:
```
Hierarchy > Create > XR > AR Session Origin
- Add ARSessionOrigin component
- Add ARPlaneManager component
- Configure settings as per SCENE_SETUP.md
```

3. Configure AR Camera:
```
Under AR Session Origin:
- Select AR Camera
- Add required components:
  - ARCameraManager
  - ARCameraBackground
  - AudioListener
```

4. Add Managers:
```
Create Empty GameObject named "Managers":
- Add GameController
- Add UIManager
- Add InputManager
- Add TargetSpawner
- Add ScoreManager
- Add AudioManager
- Add VisualEffectsManager
```

## Script Configuration

1. ARSessionManager:
```
On AR Session GameObject:
- Reference AR Session
- Reference AR Session Origin
- Set Auto Start Session: true
```

2. ARCameraManager:
```
On AR Camera:
- Reference AR Camera Background
- Reference AR Camera Manager
- Set Enable Auto Focus: true
- Set Enable Light Estimation: true
```

3. ARPlaneManager:
```
On AR Session Origin:
- Reference Plane Prefab
- Set Min Plane Size: 0.2
- Set Visualize Planes: true
```

## UI Setup

1. Create Canvases:
```
Create separate canvases for:
- Main Menu
- Game HUD
- Pause Menu
- Game Over
- Settings

Set Canvas properties:
- Render Mode: Screen Space - Overlay
- UI Scale Mode: Scale With Screen Size
```

2. Add Essential UI Elements:
```
- AR Instructions Text
- Permission Request UI
- Loading Indicator
- Score Display
- Timer
- Health/Progress Bar
```

## Testing

1. Unity Editor Testing:
```
- Use AR Foundation Remote to test in editor
- Test UI layout in Game view
- Verify input system
```

2. Device Testing:
```
- Build and run on Android device
- Test AR tracking
- Verify permissions
- Check performance
```

## Common Issues

1. Camera Permission:
```
If camera permission is denied:
- Check AndroidManifest.xml
- Verify permission handling in ARCameraManager
- Test permission flow
```

2. AR Support:
```
If AR doesn't initialize:
- Verify ARCore is installed on device
- Check minimum API level
- Confirm device supports ARCore
```

3. Performance:
```
If experiencing lag:
- Check Quality Settings
- Reduce maximum tracked planes
- Optimize materials and textures
- Use object pooling for spawned objects
```

## Final Checklist

1. Build Settings:
```
- Correct platform (Android)
- Required scenes added
- Proper build order
- Development build for testing
```

2. Android Settings:
```
- Correct package name
- Valid keystore
- Proper version number
- Required permissions
```

3. AR Configuration:
```
- AR Session initialized
- Camera permission handled
- Plane detection configured
- Light estimation set up
```

4. Testing:
```
- Test on multiple devices
- Verify all features work
- Check performance
- Validate UI on different screens
```
