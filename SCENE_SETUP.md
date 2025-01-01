# AR Game Scene Setup Guide

## 1. Scene Hierarchy Setup

```
Scene
|
├── AR System
│   ├── AR Session
│   │   ├── AR Session component
│   │   └── AR Input Manager component
│   │
│   └── AR Session Origin
│       ├── AR Session Origin component
│       ├── AR Plane Manager component
│       └── AR Camera
│           ├── Main Camera component
│           ├── AR Camera Manager component
│           ├── AR Camera Background component
│           └── Audio Listener
│
├── Managers
│   ├── GameController
│   │   └── GameController component
│   │
│   ├── UIManager
│   │   └── UIManager component
│   │
│   ├── InputManager
│   │   └── GameInputActions component
│   │
│   ├── TargetSpawner
│   │   └── TargetSpawner component
│   │
│   ├── ScoreManager
│   │   └── ScoreManager component
│   │
│   ├── AudioManager
│   │   └── AudioManager component
│   │
│   ├── VisualEffectsManager
│   │   └── VisualEffectsManager component
│   │
│   └── SaveSystem
│       └── SaveSystem component
│
└── UI
    ├── Main Menu Canvas
    │   ├── Canvas component (Screen Space - Overlay)
    │   ├── Background
    │   ├── Title
    │   └── Buttons
    │
    ├── Game HUD Canvas
    │   ├── Canvas component (Screen Space - Overlay)
    │   ├── Score Text
    │   ├── Combo Text
    │   ├── Timer
    │   └── Power-up Container
    │
    ├── Pause Menu Canvas
    │   ├── Canvas component (Screen Space - Overlay)
    │   ├── Background Panel
    │   └── Menu Items
    │
    └── Game Over Canvas
        ├── Canvas component (Screen Space - Overlay)
        ├── Results Panel
        └── Buttons

```

## 2. Component Setup

### AR Session
```
AR Session component settings:
- Match Frame Rate: Enabled
- Target Frame Rate: 60
```

### AR Session Origin
```
AR Plane Manager settings:
- Plane Prefab: assigned
- Detection Mode: Horizontal
- Environment Depth Mode: Fastest
```

### AR Camera
```
Camera settings:
- Clear Flags: Solid Color
- Background: Black
- Culling Mask: Everything
- Projection: Perspective
```

### Canvases
```
Canvas settings:
- Render Mode: Screen Space - Overlay
- Pixel Perfect: Enabled
- Sort Order:
  - Main Menu: 0
  - Game HUD: 1
  - Pause Menu: 2
  - Game Over: 3
```

## 3. Lighting Setup

```
Lighting settings:
- Mode: Realtime
- Ambient Source: Skybox
- Ambient Intensity: 1
```

## 4. Quality Settings

```
Quality settings for Android:
- Pixel Light Count: 1
- Texture Quality: Half Res
- Anti Aliasing: Disabled
- Soft Particles: Disabled
- Realtime Reflection Probes: Disabled
- Shadows: Hard Only
- Shadow Resolution: Low
```

## 5. Camera Settings

```
AR Camera settings:
- Field of View: 60
- Near Clip Plane: 0.1
- Far Clip Plane: 20
```

## 6. Input Setup

```
Input System settings:
- Default Input Actions: GameControls asset
- Input System Package: Enabled
```

## 7. Audio Setup

```
Audio settings:
- System Sample Rate: 44100
- DSP Buffer Size: Best Performance
```

## 8. Layer Setup

```
Required layers:
- Default
- UI
- AR Plane
- Target
- Ignore Raycast
```

## 9. Tag Setup

```
Required tags:
- MainCamera
- Target
- PowerUp
- UI
```

## Important Notes

1. Performance Optimization:
```
- Use mobile-optimized materials
- Keep draw calls under 100
- Batch similar materials
- Use object pooling for spawned objects
```

2. AR Considerations:
```
- Test plane detection in different lighting
- Ensure UI is visible on bright backgrounds
- Handle AR session interruptions
```

3. Input Handling:
```
- Test touch input with different screen sizes
- Handle multi-touch scenarios
- Consider UI blocking of AR interactions
```

4. Memory Management:
```
- Pool frequently spawned objects
- Unload unused assets
- Monitor texture memory usage
```
