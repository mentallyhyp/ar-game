# Quality Settings Configuration

## Android Quality Settings

### Graphics
```
- Pixel Light Count: 1
- Texture Quality: Half Res (2048 max)
- Anisotropic Textures: Per Texture
- Anti Aliasing: Disabled
- Soft Particles: Disabled
- Realtime Reflection Probes: Disabled
- Billboards Facing Camera Position: Enabled
```

### Rendering
```
- Shadow Quality: Hard Only
- Shadow Resolution: Low
- Shadow Distance: 20
- Shadow Near Plane Offset: 2
- Shadow Cascades: No Cascades
- LOD Bias: 1
- Maximum LOD Level: 0
```

### Details
```
- Blend Weights: 1 Bone
- VSync Count: Don't Sync
- Shadow Projection: Close Fit
- Shadow Distance: 20
- Skinning Quality: Low
```

### Performance
```
- Batch Mode: Single Pass
- Dynamic Batching: Enabled
- Static Batching: Enabled
- GPU Instancing: Enabled
- Frame Rate Target: 60
```

### Textures
```
- Compression:
  - RGB: ETC2
  - RGBA: ASTC 6x6
- Max Size: 2048
- Compression Quality: Normal
- Generate Mip Maps: Enabled
```

### Models
```
- Mesh Compression: Medium
- Optimize Mesh Data: Enabled
- Keep Quad Indices: Disabled
```

## Per-Platform Settings

### High-End Devices
```
- Anti Aliasing: 2x Multi Sampling
- Texture Quality: Full Res
- Shadow Quality: All
- Realtime Reflection Probes: Enabled
```

### Mid-Range Devices
```
- Anti Aliasing: Disabled
- Texture Quality: Half Res
- Shadow Quality: Hard Only
- Realtime Reflection Probes: Disabled
```

### Low-End Devices
```
- Anti Aliasing: Disabled
- Texture Quality: Quarter Res
- Shadow Quality: Disabled
- Realtime Reflection Probes: Disabled
```

## Performance Targets

```
- Target Frame Rate: 60 FPS
- Minimum Frame Rate: 30 FPS
- Draw Calls: < 100
- Triangles: < 100k
- Vertices: < 100k
```

## Unity Quality Settings Window

1. Open Quality Settings:
```
Edit > Project Settings > Quality
```

2. Configure Android Platform:
```
- Remove all quality levels except "Low"
- Rename to "Mobile"
- Apply recommended settings
```

3. Apply Changes:
```
- Set as default for Android
- Build and test on target devices
```
