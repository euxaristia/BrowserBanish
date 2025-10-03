# Chrome
Remove-Item -Recurse -Force "$env:LOCALAPPDATA\Google\Chrome\User Data\Default\Cache", `
    "$env:LOCALAPPDATA\Google\Chrome\User Data\Default\History", `
    "$env:LOCALAPPDATA\Google\Chrome\User Data\Default\Cookies" -ErrorAction SilentlyContinue

# Chromium
Remove-Item -Recurse -Force "$env:LOCALAPPDATA\Chromium\User Data\Default\Cache", `
    "$env:LOCALAPPDATA\Chromium\User Data\Default\History", `
    "$env:LOCALAPPDATA\Chromium\User Data\Default\Cookies" -ErrorAction SilentlyContinue

# Firefox SAFER -- Don't delete profile folders, delete temp/history/cookies files within all profiles
$firefoxProfiles1 = Get-ChildItem "$env:APPDATA\Mozilla\Firefox\Profiles" -Directory -ErrorAction SilentlyContinue
$firefoxProfiles2 = Get-ChildItem "$env:LOCALAPPDATA\Mozilla\Firefox\Profiles" -Directory -ErrorAction SilentlyContinue

foreach ($profile in $firefoxProfiles1 + $firefoxProfiles2) {
    Remove-Item -Force -ErrorAction SilentlyContinue `
        "$($profile.FullName)\places.sqlite" `
        "$($profile.FullName)\cookies.sqlite" `
        "$($profile.FullName)\cache2" `
        "$($profile.FullName)\startupCache" `
        "$($profile.FullName)\offlineCache"
}

# Edge
Remove-Item -Recurse -Force "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\Cache", `
    "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\History", `
    "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\Cookies" -ErrorAction SilentlyContinue

# Brave
Remove-Item -Recurse -Force "$env:LOCALAPPDATA\BraveSoftware\Brave-Browser\User Data\Default\Cache", `
    "$env:LOCALAPPDATA\BraveSoftware\Brave-Browser\User Data\Default\History", `
    "$env:LOCALAPPDATA\BraveSoftware\Brave-Browser\User Data\Default\Cookies" -ErrorAction SilentlyContinue

# Vivaldi
Remove-Item -Recurse -Force "$env:LOCALAPPDATA\Vivaldi\User Data\Default\Cache", `
    "$env:LOCALAPPDATA\Vivaldi\User Data\Default\History", `
    "$env:LOCALAPPDATA\Vivaldi\User Data\Default\Cookies" -ErrorAction SilentlyContinue

# Opera
Remove-Item -Recurse -Force "$env:APPDATA\Opera Software\Opera Stable\Cache", `
    "$env:APPDATA\Opera Software\Opera Stable\History", `
    "$env:APPDATA\Opera Software\Opera Stable\Cookies", `
    "$env:LOCALAPPDATA\Opera Software\Opera Stable\Cache", `
    "$env:LOCALAPPDATA\Opera Software\Opera Stable\Cookies" -ErrorAction SilentlyContinue


Write-Host "Browser junk and history deleted without breaking your profiles."
