@echo off
setlocal

:: Obtenez le chemin complet du dossier où se trouve ce fichier .bat
set "current_dir=%~dp0"

:: Définir le chemin du fichier cible (NovaONE.bat)
set "target_file=%current_dir%NovaONE.bat"

:: Définir le chemin du bureau de l'utilisateur
set "desktop=%USERPROFILE%\Desktop"

:: Créer le raccourci sur le bureau
set "shortcut=%desktop%\NovaONE.lnk"

:: Utiliser PowerShell pour créer le raccourci et le configurer en mode minimisé
powershell "$WScriptShell = New-Object -ComObject WScript.Shell; $shortcut = $WScriptShell.CreateShortcut('%shortcut%'); $shortcut.TargetPath = '%target_file%'; $shortcut.WindowStyle = 7; $shortcut.Save()"

exit
