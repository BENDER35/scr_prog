# Script de autoinstalación para programas esenciales
# Programas: Google Chrome, Mozilla Firefox, Steam, GOG Galaxy, Epic Games Store,
#            SCORPION, Chocolatey, Scoop, Brave Browser, Opera Browser,
#            7-Zip, Adobe Acrobat Reader, VLC Media Player, K-Lite Codec Pack Mega,
#            topgrade, atube Catcher, Zoom, Teams, LibreOffice,
#            Mozilla Thunderbird, Xonotic, SuperTuxKart, KeePassXC,
#            BlueStacks, Docker, JDownloader, Telegram, Audacity,
#            DroidCam, Spotify, 86Box, PCem, VirtualBox, DOSBox-X, DOSBox,
#            Dolphin

# Directiva de permisos: Permite la ejecución de scripts sin restricciones
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser -Force

$apps = @(
    "Google.Chrome",               # Google Chrome
    "Mozilla.Firefox",             # Mozilla Firefox
    "Valve.Steam",                 # Steam
    "GOG.Galaxy",                  # GOG Galaxy
    "EpicGames.EpicGamesLauncher", # Epic Games Store
    "Genymobile.scrcpy",           # scrcpy
    "Chocolatey.Chocolatey",       # Chocolatey (gestor de paquetes)
    "Scoop.Scoop",                 # Scoop (gestor de paquetes para Windows)
    "Brave.Brave",                 # Brave Browser
    "Opera.Opera",                 # Opera Browser
    "7zip.7zip",                   # 7-Zip
    "Adobe.Acrobat.Reader.64-bit", # Adobe Acrobat Reader
    "VideoLAN.VLC",                # VLC Media Player
    "KLCP.K-LiteCodecPack.Mega",   # K-Lite Codec Pack Mega
    "topgrade-rs.topgrade",        # topgrade
    "AtubeCatcher.AtubeCatcher",   # atube catcher
    "Zoom.Zoom",                   # Zoom
    "Microsoft.Teams",             # Teams
    "TheDocumentFoundation.LibreOffice", # LibreOffice
    "Mozilla.Thunderbird",         # Mozilla Thunderbird
    "Xonotic.Xonotic",             # Xonotic
    "SuperTuxKart.SuperTuxKart",   # SuperTuxKart
    "KeePassXCTeam.KeePassXC",     # KeePassXC
    "BlueStackSystems.BlueStacks", # BlueStacks
    "Docker.DockerDesktop",        # Docker
    "AppWork.JDownloader",         # JDownloader
    "Telegram.TelegramDesktop",    # Telegram
    "Audacity.Audacity",           # Audacity
    "Dev47Apps.DroidCam",          # DroidCam
    "Spotify.Spotify",             # Spotify
    "86Box.86Box",                 # 86Box
    "PCem.PCem",                   # PCem
    "Oracle.VirtualBox",           # VirtualBox
    "jPDosBox-X.DOSBox-X",         # DOSBox-X
    "DOSBox.DOSBox",               # DOSBox
    "DolphinEmulator.Dolphin"      # Dolphin
)

Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "   INICIANDO INSTALACION AUTOMATICA" -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan

foreach ($app in $apps) {
    Write-Host "`n[*] Instalando: $app..." -ForegroundColor Yellow
    
    # Intenta instalar la aplicación usando Winget
    # --accept-package-agreements: Acepta licencias de la app
    # --accept-source-agreements: Acepta términos de Winget
    # --silent: Instalación sin intervención del usuario
    winget install --id $app --silent --accept-package-agreements --accept-source-agreements
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "[+] $app se instalo correctamente." -ForegroundColor Green
    } else {
        Write-Host "[-] Error al instalar $app. Es posible que ya este instalado o requiera intervencion manual." -ForegroundColor Red
    }
}

Write-Host "`n==========================================" -ForegroundColor Cyan
Write-Host "        PROCESO FINALIZADO" -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan
pause