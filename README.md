# Autoinstaller Software for Windows (Winget)

This project contains a PowerShell script designed to automate the basic software installation on Windows 10 and Windows 11 systems using **Winget** (Windows Package Manager).

## 🚀 Included Programs

The script installs the official and latest versions of:

*   **Google Chrome**: Web browser.
*   **Mozilla Firefox**: Web browser.
*   **Steam**: Video game platform.
*   **GOG Galaxy**: GOG.com game platform.
*   **Epic Games Launcher**: Epic Games Store launcher.
*   **scrcpy**: Display and control Android devices.
*   **Chocolatey**: Windows package manager.
*   **Scoop**: Another Windows package manager.
*   **Brave Browser**: Secure and fast browser.
*   **Opera Browser**: Fast and innovative browser.
*   **7-Zip**: File archiver.
*   **Adobe Acrobat Reader (64-bit)**: PDF viewer.
*   **VLC Media Player**: Universal video and audio player.
*   **K-Lite Codec Pack Mega**: Complete codec pack.
*   **topgrade**: Keep your apps updated.
*   **atube Catcher**: Video downloader.
*   **Zoom**: Video conferencing.
*   **Microsoft Teams**: Collaboration platform.
*   **LibreOffice**: Office suite.
*   **Mozilla Thunderbird**: Email client.
*   **Xonotic**: FPS game.
*   **SuperTuxKart**: Kart racing game.
*   **KeePassXC**: Password manager.
*   **BlueStacks**: Android emulator.
*   **Docker**: Container platform.
*   **JDownloader**: Download manager.
*   **Telegram**: Messaging app.
*   **Audacity**: Audio editor.
*   **DroidCam**: Use Android as webcam.
*   **Spotify**: Music streaming.
*   **86Box**: Old computer emulator.
*   **PCem**: PC emulator.
*   **VirtualBox**: Virtualization.
*   **DOSBox-X**: DOS emulator.
*   **DOSBox**: DOS emulator.
*   **Dolphin**: GameCube/Wii emulator.

## 📋 Requirements

1.  **Windows 10 (version 1809 or later) or Windows 11**.
2.  **Winget installed**: Usually comes preinstalled with the "App Installer" from the Microsoft Store.
3.  **Internet connection**.

## 🛠️ Usage Instructions

1.  **Download the file**: Make sure you have the `instalar.ps1` file.
2.  **Run as Administrator**:
    *   Right-click on `instalar.ps1`.
    *   Select **"Run with PowerShell"**.
3.  **Confirmation**: If a User Account Control (UAC) window appears, click "Yes".

### ⚠️ Troubleshooting (Execution Policy)

If you get an error indicating that "script execution is disabled", follow these steps:

1.  Open **PowerShell** as Administrator.
2.  Type the following command and press Enter:
    ```powershell
    Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser
    ```
3.  Confirm with `S` or `Y`.
4.  Try running the script again.

## 🔍 Technical Details

The script uses the following `winget` parameters to ensure a clean installation:

*   `--id`: Unique package identifier in the official repository.
*   `--silent`: Performs background installation without showing configuration windows for each program.
*   `--accept-package-agreements`: Automatically accepts the software license agreements.
*   `--accept-source-agreements`: Accepts the terms of use of the Microsoft repository.

---

*Note: This script downloads software directly from the official sources of the developers.*