# PowerShell script to organize Unity project scripts

$scriptRoot = "Assets/Scripts"
$runtimeRoot = "$scriptRoot/Runtime"

# Create necessary directories if they don't exist
$directories = @(
    "$runtimeRoot/AR",
    "$runtimeRoot/Core",
    "$runtimeRoot/GameModes",
    "$runtimeRoot/Input",
    "$runtimeRoot/Interfaces",
    "$runtimeRoot/Managers",
    "$runtimeRoot/PowerUps",
    "$runtimeRoot/SaveSystem",
    "$runtimeRoot/Settings",
    "$runtimeRoot/Targets",
    "$runtimeRoot/UI"
)

foreach ($dir in $directories) {
    if (-not (Test-Path $dir)) {
        New-Item -ItemType Directory -Path $dir -Force
    }
}

# Move files to appropriate directories
$fileMoves = @{
    "Achievement.cs" = "Managers"
    "AchievementManager.cs" = "Managers"
    "GameAreaManager.cs" = "Managers"
    "GameController.cs" = "Core"
    "GameManager.cs" = "Core"
    "GameMode.cs" = "GameModes"
    "GameModeManager.cs" = "GameModes"
    "GameUI.cs" = "UI"
    "HitEffect.cs" = "Core"
    "InteractiveObject.cs" = "Core"
    "ObjectSpawner.cs" = "Core"
    "PlayerProgressManager.cs" = "Managers"
    "Powerup.cs" = "PowerUps"
    "ProgressUI.cs" = "UI"
    "ScoreManager.cs" = "Managers"
    "SettingsManager.cs" = "Settings"
    "Target.cs" = "Targets"
    "TutorialData.cs" = "Core"
    "TutorialManager.cs" = "Managers"
    "UIManager.cs" = "UI"
    "VisualEffectsManager.cs" = "Managers"
}

foreach ($file in $fileMoves.Keys) {
    $sourcePath = "$scriptRoot/$file"
    $targetDir = "$runtimeRoot/$($fileMoves[$file])"
    $targetPath = "$targetDir/$file"
    
    if (Test-Path $sourcePath) {
        # Move the file
        Move-Item -Path $sourcePath -Destination $targetPath -Force
        # Move the meta file if it exists
        if (Test-Path "$sourcePath.meta") {
            Move-Item -Path "$sourcePath.meta" -Destination "$targetPath.meta" -Force
        }
    }
}

# Remove empty directories
Get-ChildItem -Path $scriptRoot -Directory | Where-Object {
    (Get-ChildItem -Path $_.FullName -Recurse -File).Count -eq 0
} | Remove-Item -Recurse -Force

Write-Host "Script organization complete!"
