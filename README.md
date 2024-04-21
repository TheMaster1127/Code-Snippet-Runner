## Project: Code-Snippet-Runner

### Overview
The **Code-Snippet-Runner** project is designed to execute code snippets conveniently using hotkeys based on the file type. It opens a window with a text box to paste your code and then runs it. The script is configured via a `settings.ini` file where you can customize the hotkeys.

### Usage

#### Running Code
- **HTML/JavaScript**: Press `Ctrl+Shift+Alt+J` to run the code snippet in an HTML or JavaScript file. The script automatically detects if the file is HTML or JavaScript.
  
- **Python**: Press `Ctrl+Shift+Alt+P` to execute the code in a Python file.

- **AutoHotKey**: Press `Ctrl+Shift+Alt+A` to run the AutoHotKey script.

- **HTH**: Press `Ctrl+Shift+Alt+H` to run the HTH script.

Additionally, in the window, you can press `Ctrl+Enter` to activate the button.

#### Configuring Hotkeys
You can modify the hotkeys by editing the `settings.ini` file.

### Installation
1. Ensure you have AutoHotKey installed on your system.
2. Download or clone this repository.
3. Double-click `Code Runner.ahk` to start the script.

### Customization
- **Editing Hotkeys**: Open `settings.ini` in a text editor to modify hotkeys. Follow the format specified in the file for defining new hotkeys.

### Configuration (`settings.ini`)
```ini
[Hotkeys]
HTH=!+^H
HTML_JS=!+^J
AutoHotKey=!+^A
Python=!+^P
```

---
