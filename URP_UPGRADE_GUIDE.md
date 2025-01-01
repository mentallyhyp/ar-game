# URP Upgrade Guide for AR Game

## 1. Install Universal Render Pipeline

1. Open Package Manager:
```
Window > Package Manager
```

2. Install URP:
```
- Search for "Universal RP"
- Click "Install"
```

## 2. Configure Project Settings

1. Graphics Settings:
```
Edit > Project Settings > Graphics
- Scriptable Render Pipeline Settings: Select "UniversalRenderPipelineAsset_Mobile"
```

2. Quality Settings:
```
Edit > Project Settings > Quality
- Remove all quality levels except "Medium"
- Rename "Medium" to "Mobile AR"
- Set the following:
  * Rendering: UniversalRenderPipelineAsset_Mobile
  * VSync: Don't Sync
  * Anti Aliasing: Disabled
  * Shadows: Disabled
  * Shadow Resolution: Low
  * Shadow Distance: 20
  * Shadow Cascades: No Cascades
```

## 3. Upgrade Materials

1. Upgrade Project Materials:
```
Edit > Rendering > Materials > Convert All Built-in Materials to URP
```

2. Check AR Materials:
```
Verify these materials are properly converted:
- ARPlaneMaterial
- InteractiveObjectMaterial
- TargetMaterial
- EffectsMaterials
```

3. Update Shader Settings:
```
For each material:
1. Select material in Project window
2. In Inspector:
   - Surface Type: Transparent
   - Blending Mode: Alpha
   - Render Face: Both
   - Enable GPU Instancing
```

## 4. Update AR Camera

1. Configure AR Camera:
```
In AR Session Origin:
1. Select AR Camera
2. Add/Update Components:
   - Camera
   - Universal Additional Camera Data
   - AR Camera Background
   - AR Camera Manager
```

2. Camera Settings:
```
- Clear Flags: Solid Color
- Background: Black
- Priority: 1
- HDR: Disabled
- MSAA: Disabled
- Allow Dynamic Resolution: Enabled
```

## 5. Update Post-Processing

1. Remove HDRP Post-processing:
```
Delete or disable:
- Bloom
- Color Adjustments
- Depth of Field
```

2. Add URP Post-processing (if needed):
```
1. Create URP Post-processing Profile
2. Add minimal effects:
   - Auto Exposure
   - Color Adjustments (minimal)
```

## 6. Performance Settings

1. URP Asset Settings:
```
Select UniversalRenderPipelineAsset_Mobile:
- Disable Depth Texture
- Disable Opaque Texture
- Main Light: Per Pixel
- Additional Lights: Disabled
- Shadows: Disabled
- Post-processing: Disabled
- Enable Dynamic Batching
- Enable SRP Batcher
```

2. Project Settings:
```
Edit > Project Settings > Player:
- Static Batching: Enabled
- Dynamic Batching: Enabled
- GPU Skinning: Enabled
- Framerate: Application.targetFrameRate = 60
```

## 7. Testing

1. Check Performance:
```
- Use Frame Debugger
- Monitor draw calls
- Check batching
- Verify no HDRP materials remain
```

2. Verify AR Features:
```
- Camera background
- Plane visualization
- Object placement
- Lighting estimation
```

## Common Issues

1. Pink Materials:
```
- Material using wrong shader
- Missing URP shader
- Not converted to URP
```

2. AR Background Issues:
```
- Check AR Camera Background component
- Verify camera clear flags
- Check render queue
```

3. Performance Issues:
```
- Too many lights
- Complex materials
- Post-processing enabled
- Shadows enabled
```
