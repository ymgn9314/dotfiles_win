# SymbolicLink
Remove-Item $env:APPDATA\Code\User\settings.json
New-Item -Value $PSScriptRoot\symlinks\Code\User\settings.json -Path $env:APPDATA\Code\User\ -Name settings.json -ItemType SymbolicLink

Remove-Item $env:APPDATA\Code\User\keybindings.json
New-Item -Value $PSScriptRoot\symlinks\Code\User\keybindings.json -Path $env:APPDATA\Code\User\ -Name keybindings.json -ItemType SymbolicLink

Remove-Item $env:APPDATA\Code\User\snippets\dart.json
New-Item -Value $PSScriptRoot\symlinks\Code\User\snippets\dart.json -Path $env:APPDATA\Code\User\snippets\ -Name dart.json -ItemType SymbolicLink

# Vscode setup
powershell -NoProfile -ExecutionPolicy RemoteSigned $PSScriptRoot\vscode\setup.ps1

# Install Packages
powershell -NoProfile -ExecutionPolicy RemoteSigned $PSScriptRoot\packages\setup.ps1
