# Chrome
Remove-Item -Recurse -Force "$env:LOCALAPPDATA\Google\Chrome\User Data" -ErrorAction SilentlyContinue

# Chromium
Remove-Item -Recurse -Force "$env:LOCALAPPDATA\Chromium\User Data" -ErrorAction SilentlyContinue

# Firefox (Roaming and Local)
Remove-Item -Recurse -Force "$env:APPDATA\Mozilla\Firefox\Profiles" -ErrorAction SilentlyContinue
Remove-Item -Recurse -Force "$env:LOCALAPPDATA\Mozilla\Firefox\Profiles" -ErrorAction SilentlyContinue

# Edge
Remove-Item -Recurse -Force "$env:LOCALAPPDATA\Microsoft\Edge\User Data" -ErrorAction SilentlyContinue

# Brave
Remove-Item -Recurse -Force "$env:LOCALAPPDATA\BraveSoftware\Brave-Browser\User Data" -ErrorAction SilentlyContinue

# Vivaldi
Remove-Item -Recurse -Force "$env:LOCALAPPDATA\Vivaldi\User Data" -ErrorAction SilentlyContinue

# Opera
Remove-Item -Recurse -Force "$env:APPDATA\Opera Software" -ErrorAction SilentlyContinue
Remove-Item -Recurse -Force "$env:LOCALAPPDATA\Opera Software" -ErrorAction SilentlyContinue

Write-Host "All major browser user data deleted."
