# Required Unity Packages

## Core Packages
```json
{
  "dependencies": {
    "com.unity.xr.arfoundation": "5.0.5",
    "com.unity.xr.arcore": "5.0.5",
    "com.unity.inputsystem": "1.6.3",
    "com.unity.textmeshpro": "3.0.6",
    "com.unity.mathematics": "1.2.6"
  }
}
```

## Additional Required Assets
1. DOTween (Free Version)
   - Used for smooth UI animations
   - Available from Asset Store
   - Version: 1.2.420 or later

2. Particle Pack
   - Used for visual effects
   - Create basic effects if not available

## Installation Steps

1. Package Manager Installation:
```
Window > Package Manager
Add package by name:
- "com.unity.xr.arfoundation"
- "com.unity.xr.arcore"
- "com.unity.inputsystem"
- "com.unity.textmeshpro"
```

2. Asset Store Installation:
```
1. Open Asset Store window
2. Search for "DOTween"
3. Download and import DOTween
4. Run DOTween setup
```

3. XR Plugin Management:
```
1. Edit > Project Settings > XR Plugin Management
2. Install XR Plugin Management if prompted
3. Enable ARCore for Android platform
```

4. Input System Setup:
```
1. Edit > Project Settings > Player
2. Set "Active Input Handling" to "Both"
3. Restart Unity when prompted
```

## Version Compatibility

- Unity Version: 2022.3 LTS or later
- Android API Level: 24 (Android 7.0) or later
- ARCore: Latest version
- Device: ARCore supported device

## Package Configuration

1. AR Foundation:
```
- Enable background rendering
- Configure plane detection
- Set up AR camera
```

2. Input System:
```
- Create input action asset
- Configure touch input
- Set up UI input
```

3. TextMeshPro:
```
- Import essential resources
- Configure font assets
- Set up text settings
```

4. DOTween:
```
- Run setup
- Configure modules
- Set optimization preferences
```
