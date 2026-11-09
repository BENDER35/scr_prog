# Autoinstalador de Software para Windows (Winget)

Este proyecto contiene un script de PowerShell diseñado para automatizar la instalación de software básico en sistemas Windows 10 y Windows 11 utilizando **Winget** (Administrador de paquetes de Windows).

## 🚀 Programas Incluidos

El script instala las versiones oficiales y más recientes de:

*   **Google Chrome**: Navegador web.
*   **Mozilla Firefox**: Navegador web.
*   **Steam**: Plataforma de videojuegos.
*   **GOG Galaxy**: Plataforma GOG.com.
*   **Epic Games Launcher**: Tienda Epic Games.
*   **scrcpy**: Mostrar y controlar dispositivos Android.
*   **Chocolatey**: Gestor de paquetes para Windows.
*   **Scoop**: Otro gestor de paquetes para Windows.
*   **Brave Browser**: Navegador seguro y rápido.
*   **Opera Browser**: Navegador rápido e innovador.
*   **7-Zip**: Archivador de archivos.
*   **Adobe Acrobat Reader (64-bit)**: Visor de PDF.
*   **VLC Media Player**: Reproductor de video y audio universal.
*   **K-Lite Codec Pack Mega**: Paquete completo de codecs multimedia.
*   **topgrade**: Mantener tus aplicaciones actualizadas.
*   **atube Catcher**: Descargador de videos.
*   **Zoom**: Videoconferencia.
*   **Microsoft Teams**: Plataforma de colaboración.
*   **LibreOffice**: Oficina y suite de productividad.
*   **Mozilla Thunderbird**: Cliente de correo electrónico.
*   **Xonotic**: Juego FPS.
*   **SuperTuxKart**: Juego de carreras de karts.
*   **KeePassXC**: Gestor de contraseñas.
*   **BlueStacks**: Emulador de Android.
*   **Docker**: Plataforma de contenedores.
*   **JDownloader**: Gestor de descargas.
*   **Telegram**: Aplicación de mensajería.
*   **Audacity**: Editor de audio.
*   **DroidCam**: Usar el Android como webcam.
*   **Spotify**: Streaming de música.
*   **86Box**: Emulador de computadoras antiguas.
*   **PCem**: Emulador de PC.
*   **VirtualBox**: Virtualización.
*   **DOSBox-X**: Emulador DOS.
*   **DOSBox**: Emulador DOS.
*   **Dolphin**: Emulador GameCube/Wii.

## 📋 Requisitos

1.  **Windows 10 (versión 1809 o posterior) o Windows 11**.
2.  **Winget instalado**: Normalmente viene preinstalado con el "App Installer" de la Microsoft Store.
3.  **Conexión a Internet**.

## 🛠️ Instrucciones de Uso

1.  **Descargar el archivo**: Asegúrate de tener el archivo `instalar.ps1`.
2.  **Ejecutar como Administrador**:
    *   Haz clic derecho sobre `instalar.ps1`.
    *   Selecciona **"Ejecutar con PowerShell"**.
3.  **Confirmación**: Si aparece una ventana de Control de Cuentas de Usuario (UAC), haz clic en "Sí".

### ⚠️ Solución de problemas (Política de ejecución)

Si al intentar ejecutar el script recibes un error indicando que "la ejecución de scripts está deshabilitada", sigue estos pasos:

1.  Abre **PowerShell** como Administrador.
2.  Escribe el siguiente comando y pulsa Enter:
    ```powershell
    Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser
    ```
3.  Confirma con `S` o `Y`.
4.  Vuelve a intentar ejecutar el script.

## 🔍 Detalles Técnicos del Script

El script utiliza los siguientes parámetros de `winget` para garantizar una instalación limpia:

*   `--id`: Identificador único del paquete en el repositorio oficial.
*   `--silent`: Realiza la instalación en segundo plano sin mostrar ventanas de configuración de cada programa.
*   `--accept-package-agreements`: Acepta automáticamente los acuerdos de licencia del software.
*   `--accept-source-agreements`: Acepta los términos de uso del repositorio de Microsoft.

---

*Nota: Este script descarga el software directamente desde las fuentes oficiales de los desarrolladores.*