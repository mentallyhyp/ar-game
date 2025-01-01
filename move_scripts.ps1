# Script organization map
$scriptMoves = @{
    # AR Scripts
    "ARInputManager.cs" = "Runtime/AR/"
    "ARObjectPlacer.cs" = "Runtime/AR/"
    "ARPlaneManager.cs" = "Runtime/AR/"
    "ARSessionConfig.cs" = "Runtime/AR/"

    # Manager Scripts
    "AudioManager.cs" = "Runtime/Managers/"
    "GameManager.cs" = "Runtime/Managers/"
    "ScoreManager.cs" = "Runtime/Managers/"
    "UIManager.cs" = "Runtime/Managers/"
    "VisualEffectsManager.cs" = "Runtime/Managers/"
    "PlayerProgressManager.cs" = "Runtime/Managers/"
    "SettingsManager.cs" = "Runtime/Managers/"
    "TutorialManager.cs" = "Runtime/Managers/"
    "AchievementManager.cs" = "Runtime/Managers/"
    "GameModeManager.cs" = "Runtime/Managers/"

    # UI Scripts
    "GameUI.cs" = "Runtime/UI/"
    "ProgressUI.cs" = "Runtime/UI/"

    # Core Scripts
    "GameController.cs" = "Runtime/Core/"
    "InteractiveObject.cs" = "Runtime/Core/"
    "ObjectSpawner.cs" = "Runtime/Core/"
    "Target.cs" = "Runtime/Core/"
    "GameMode.cs" = "Runtime/Core/"
    "TutorialData.cs" = "Runtime/Core/"

    # PowerUp Scripts
    "Powerup.cs" = "Runtime/PowerUps/"

    # Target Scripts
    "Target.cs" = "Runtime/Targets/"
}

$baseDir = "Assets/Scripts"
$metaExt = ".meta"

foreach ($file in $scriptMoves.Keys) {
    $sourcePath = Join-Path $baseDir $file
    $sourceMetaPath = $sourcePath + $metaExt
    $targetDir = Join-Path $baseDir $scriptMoves[$file]
    $targetPath = Join-Path $targetDir $file
    $targetMetaPath = $targetPath + $metaExt

    if (Test-Path $sourcePath) {
        # Create target directory if it doesn't exist
        if (-not (Test-Path $targetDir)) {
            New-Item -ItemType Directory -Path $targetDir -Force
        }

        # Move the script file
        Move-Item -Path $sourcePath -Destination $targetPath -Force

        # Move the meta file if it exists
        if (Test-Path $sourceMetaPath) {
            Move-Item -Path $sourceMetaPath -Destination $targetMetaPath -Force
        }

        Write-Host "Moved $file to $($scriptMoves[$file])"
    }
}
