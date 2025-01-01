# Mobile AR Asset Optimization Guide

## Texture Settings

### UI Textures
```
1. Max Size: 1024 or 512
2. Format Android: ASTC 6x6
3. Compression: Normal Quality
4. Generate Mipmap: Disabled for UI
5. Wrap Mode: Clamp
```

### Game Textures
```
1. Max Size: 1024
2. Format Android: ASTC 6x6
3. Compression: Normal Quality
4. Generate Mipmap: Enabled
5. Streaming Mipmaps: Enabled
```

### AR Textures (Plane Detection, etc.)
```
1. Max Size: 512
2. Format Android: ASTC 6x6
3. Compression: Fast
4. Generate Mipmap: Disabled
5. Read/Write: Disabled
```

## Model Settings

### Character Models
```
1. Mesh Compression: Medium
2. Read/Write: Disabled
3. Optimize Mesh: Enabled
4. Import BlendShapes: Only if needed
5. Animation Type: Generic
6. Animation Compression: Optimal
```

### Environment Models
```
1. Mesh Compression: High
2. Read/Write: Disabled
3. Optimize Mesh: Enabled
4. Generate Colliders: Only if needed
5. Generate Lightmap UVs: Disabled
```

### AR Models (Targets, Effects)
```
1. Mesh Compression: Medium
2. Read/Write: Disabled
3. Optimize Mesh: Enabled
4. Keep Quads: Disabled
5. Weld Vertices: Enabled
```

## Audio Settings

### Sound Effects
```
1. Force To Mono: Enabled
2. Load Type: Compressed In Memory
3. Compression Format: ADPCM
4. Quality: 0.7
5. Sample Rate: 22050 Hz
```

### Background Music
```
1. Force To Mono: Optional
2. Load Type: Streaming
3. Compression Format: Vorbis
4. Quality: 0.6
5. Sample Rate: 44100 Hz
```

## Shader Settings

### Mobile-Optimized Shaders
```
1. Use Universal RP/Mobile shaders
2. Disable unused features
3. Reduce shader variants
4. Use static batching
5. Enable GPU instancing
```

## Asset Bundle Settings

### Configuration
```
1. Compression: LZ4
2. Include Asset Bundle Name: false
3. Force Rebuild: false
4. Ignore Type Tree Changes: true
5. Append Hash: true
```

### Bundle Organization
```
1. Group by feature
2. Separate UI assets
3. Separate levels/scenes
4. Include dependencies
5. Version control
```

## Performance Monitoring

### Unity Profiler
```
1. Monitor draw calls
2. Check batching
3. Track memory usage
4. Monitor frame time
5. Check garbage collection
```

### Memory Management
```
1. Use object pooling
2. Implement async loading
3. Monitor texture memory
4. Handle scene transitions
5. Clear unused resources
```

## Best Practices

### General
```
1. Use sprite atlases
2. Implement LOD systems
3. Optimize particle systems
4. Use occlusion culling
5. Implement distance culling
```

### AR-Specific
```
1. Limit tracked planes
2. Optimize raycasts
3. Reduce camera effects
4. Minimize post-processing
5. Use efficient tracking
```
