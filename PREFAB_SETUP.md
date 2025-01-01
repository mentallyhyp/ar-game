# Prefab Setup Guide

## 1. UI Prefabs

### Main Menu
```
Canvas (Main Menu)
|- Background Panel
|- Title
|- Buttons Container
   |- Play Button
   |- Settings Button
   |- Achievements Button
   |- Quit Button
|- Version Text
```

### Game HUD
```
Canvas (Game HUD)
|- Top Bar
   |- Score Text
   |- Combo Counter
   |- Timer
   |- Power-up Indicators
|- Game Mode Info
   |- Mode Name
   |- Objective Text
   |- Progress Bar
|- Bottom Bar
   |- Health/Lives (if applicable)
   |- Pause Button
|- Pause Menu (initially inactive)
   |- Resume Button
   |- Restart Button
   |- Settings Button
   |- Quit to Menu Button
```

### Settings Menu
```
Canvas (Settings)
|- Panel
   |- Tabs
      |- Graphics
      |- Audio
      |- Gameplay
      |- AR Settings
   |- Content Area
   |- Apply Button
   |- Reset Button
```

## 2. Target Prefabs

### Base Target
```
Target
|- Model (Sphere/Cube)
|- Collider
|- Target Script
|- Effects
   |- Trail Renderer
   |- Particle System
|- Audio Source
```

### Bonus Target
```
BonusTarget (Variant)
|- Unique Material (Yellow/Gold)
|- Bonus Target Script
|- Enhanced Particles
|- Timer Indicator
```

### Chain Target
```
ChainTarget (Variant)
|- Unique Material (Blue)
|- Chain Target Script
|- Connection Effect
|- Chain Indicator
```

### Moving Target
```
MovingTarget (Variant)
|- Unique Material (Red)
|- Moving Target Script
|- Motion Trail
|- Direction Indicator
```

## 3. Effect Prefabs

### Hit Effects
```
HitEffect
|- Particle System (Burst)
|- Light (Optional)
|- Audio Source
|- Auto-destroy Script
```

### Score Popup
```
ScorePopup
|- TextMeshPro Text
|- Animation
|- Fade Effect
```

### Power-up Effects
```
PowerUpEffect
|- Particle System (Continuous)
|- Light
|- Audio Source
|- Duration Timer
```

### Achievement Popup
```
AchievementPopup
|- Panel
|- Icon
|- Title Text
|- Description Text
|- Animation
```

## 4. Power-up Prefabs

### Score Multiplier
```
ScoreMultiplierPowerUp
|- Model
|- Rotating Animation
|- Particle Effect
|- Collider
|- PowerUp Script
```

### Time Freeze
```
TimeFreezePowerUp
|- Model
|- Ice Effect
|- Collider
|- PowerUp Script
```

### Rapid Fire
```
RapidFirePowerUp
|- Model
|- Speed Effect
|- Collider
|- PowerUp Script
```

## 5. AR Prefabs

### Plane Visualization
```
ARPlane
|- Mesh
|- Material (Semi-transparent)
|- Plane Script
|- Edge Detection
```

### Game Area
```
GameArea
|- Boundary Visualization
|- Collider
|- Area Manager Script
```

## Material Guidelines

### Colors
```
Targets:
- Regular: White (#FFFFFF)
- Bonus: Gold (#FFD700)
- Chain: Blue (#4169E1)
- Moving: Red (#FF4444)

Power-ups:
- Score Multiplier: Purple (#9B30FF)
- Time Freeze: Cyan (#00FFFF)
- Rapid Fire: Orange (#FF8C00)

UI:
- Primary: #4CAF50
- Secondary: #2196F3
- Accent: #FF4081
- Background: #212121
```

### Shaders
```
Mobile-optimized shaders:
- Unlit for simple objects
- Mobile/Particles for effects
- Mobile/Transparent for AR visualization
```

## Animation Guidelines

### Timing
```
- UI transitions: 0.2-0.3s
- Power-up effects: 0.5-1.0s
- Score popups: 0.5s
- Achievement popups: 2.0s
```

### Styles
```
- Use scale and fade for UI
- Rotate power-ups
- Smooth movement for targets
- Snappy feedback for hits
```
