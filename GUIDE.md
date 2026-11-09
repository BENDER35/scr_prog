# Didactic Guide of the Software Autoinstaller

## Purpose

This document serves as a complete guide to understand, use, and modify the `instalar.ps1` script. It is aimed at Windows users who want to automate the installation of common software on new computers or after formatting.

## Script Structure

The script is divided into three main sections:

### 1. Permissions Directive
```powershell
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser -Force
```
- **What it does**: Changes the PowerShell execution policy to allow script execution without restrictions for the current user.
- **Why it's necessary**: By default, Windows blocks script execution for security. This directive is needed the first time the script is run.
- **Scope**: Only affects the current user (`CurrentUser`), does not require administrator privileges to *execute* the script (though the first time it needs admin permissions to change the policy).
- **To revert**: `Set-ExecutionPolicy -ExecutionPolicy Restricted -Scope CurrentUser -Force`

### 2. Applications List
```powershell
$apps = @(
    "Google.Chrome",
    "Mozilla.Firefox",
    # ... more Winget IDs
)
```
- **What it is**: An array (list) containing the Winget package identifiers that will be installed.
- **Format**: Each entry follows the `Name.Package` format, following the Winget standard.
- **How to add a new program**: Research the corresponding Winget ID and add it to the array following the pattern `"Id.Package" # Comment`.
- **ID Sources**: winget.run, official repository microsoft/winget-pkgs, or running `winget list --id <id>`.

### 3. Installation Loop
```powershell
foreach ($app in $apps) {
    winget install --id $app --silent --accept-package-agreements --accept-source-agreements
    # ... check $LASTEXITCODE and inform user
}
```
- **What it does**: Iterates over each application in the array and attempts to install it using Winget.
- **Key parameters**:
  - `--silent`: Silent installation (without user intervention).
  - `--accept-package-agreements`: Automatically accepts license agreements.
  - `--accept-source-agreements`: Accepts the terms of the source (Microsoft/Windows).
- **Error handling**: If `$LASTEXITCODE` is 0, the installation was successful; otherwise, an error message is displayed.

## Initial Setup Steps

### Step 1: Preparation
1. Download the `instalar.ps1` file from the repository.
2. Make sure you have Windows 10 (version 1809 or later) or Windows 11.
3. Verify Winget is installed (run `winget --version` in PowerShell).

### Step 2: Initial Configuration (First time only)
Run PowerShell as Administrator and execute:
```powershell
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser
```
- Respond with `S` or `Y` when prompted.
- This only needs to be done once on your user account.

### Step 3: Running the Script
1. Right-click on `instalar.ps1`.
2. Select **"Run with PowerShell"** (Run with PowerShell).
3. If a User Account Control (UAC) window appears, click "Yes".
4. The script will begin installing applications one by one. This may take several minutes depending on your internet connection.

### Step 4: Verification
When finished, the script will display a "PROCESS FINISHED" message and pause. Check that all applications were installed correctly by reviewing the console output.

## How to Customize the Script

### Adding a New Program
1. Research the Winget ID of the program you want to add. You can search at:
   - winget.run (https://winget.run)
   - The official repository: https://github.com/microsoft/winget-pkgs
   - By running `winget list | findstr "program-name"`
2. Open the `instalar.ps1` file in a text editor.
3. Add the line `"Id.Package" # Program Name` to the `$apps` array, maintaining alphabetical or logical order.
4. Save the changes.

### Removing a Program
1. Simply delete the corresponding line from the `$apps` array.
2. Make sure to maintain correct syntax (quotes and comma).

### Changing the Execution Policy
If you want to change the execution policy:
- `RemoteSigned`: Allows local scripts but blocks unsigned scripts downloaded from the internet.
- `Unrestricted`: Allows all scripts (the one used here).
- `Bypass`: Executes scripts without showing any warning message.

Change the line `Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser -Force` to the policy you desire.

### Changing the Language of Messages
The script uses Spanish messages by default. To change them to English:
1. Find all `Write-Host` strings containing Spanish text.
2. Modify them to the desired English translation.

## Common Troubleshooting

### Error: "Script execution is disabled"
- **Cause**: PowerShell execution policy blocks the script.
- **Solution**: Run `Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser` in PowerShell as Administrator.

### Error: "Winget package not found"
- **Cause**: The package ID is incorrect or the package doesn't exist in the repository.
- **Solution**: Verify the correct ID using `winget list` or check https://winget.run.

### Some application fails to install
- **Cause**: The program may already be installed, may require manual intervention, or may have conflicts.
- **Solution**: The script includes a message indicating "It may already be installed or require manual intervention". Run that application manually if needed.

### Script closes immediately
- **Cause**: The PowerShell window closes after finishing.
- **Solution**: The script includes a `pause` at the end, but if double-clicked from File Explorer, the window may close too quickly. Run it directly from PowerShell.

## Advanced Tips

### Selective Installation
You can comment out applications in the array using the `;` symbol at the beginning of the line, or simply remove them. If you want to install only some applications, edit the file and remove those you don't need.

### Future Updates
To update the script with new applications or fixes:
1. Download the latest version from the repository.
2. Copy your modified `instalar.ps1` over the new one (or merge changes).
3. Re-run `Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser` if it's the first time on a new computer.

### Use on Multiple Computers
The script is designed to be portable. Simply copy the `instalar.ps1` file to any Windows computer with Winget and run it following the steps above. The execution policy only needs to be configured once per user.

### Customizing Output
The `Write-Host` colored variables can be modified to adapt the appearance to your preferences or to your terminal's color schemes.