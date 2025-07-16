#!/bin/bash
# 🌌 ARK-ECOSYSTEM-SETUP – Meta-Repo Setup Handler (Mission-LT Protocol)
# Commander: koobie777 | Protocol: ADMIRAL A.R.K.

echo "🛰️ \"Every fleet needs a foundation. Let's prepare The ARK for launch, Commander!\""

# Check for git
if ! command -v git &>/dev/null; then
    echo "⚠️ [ERROR] Git not found."
    echo "Location: ark-ecosystem-setup.sh"
    echo "Fix: Install git (sudo apt install git) and rerun setup."
    echo "\"I'll guide you, Commander.\""
    exit 1
fi

# Update submodules
echo "🌌 Initializing and updating ARK submodules..."
git submodule update --init --recursive

# Install recommended dependencies (customize for your fleet)
echo "🚀 Installing recommended dependencies..."
DEPS=(tmux curl wget python3)
for dep in "${DEPS[@]}"; do
    if ! command -v "$dep" &>/dev/null; then
        echo "🛠️ Installing $dep for The ARK..."
        sudo apt-get install -y "$dep"
    fi
done

echo "🛰️ ARK setup complete. All systems are initialized."

# Display ARK fleet status
echo "🚦 ARK Fleet Structure:"
echo "Essentials: $(ls -1 ark-ecosystem-essential 2>/dev/null | wc -l) modules"
echo "Orbital Dock: $(ls -1 ark-ecosystem-orbital-dock 2>/dev/null | wc -l) modules"
echo "Logs: $(ls -1 ark-ecosystem-logs 2>/dev/null | wc -l) files"
echo ""

# Optional: Install Start Menu Shortcut, Desktop Icon, Taskbar Icon
echo "🛸 Would you like to install ARK-Ecosystem shortcuts for ease of access?"
echo "  1) Start Menu Shortcut"
echo "  2) Desktop Icon"
echo "  3) Taskbar Icon (Linux only)"
echo "  4) All of the above"
echo "  5) Skip"
read -p "Commander, select your option [1-5]: " shortcut_choice

ARK_ICON_PATH="ark-ecosystem-assets/ark-ecosystem-icons/ark-ecosystem-icon.png"
ARK_DESKTOP_ENTRY="[Desktop Entry]
Type=Application
Name=THE ARK ECOSYSTEM
Comment=Launch ARK-Ecosystem Main Menu
Exec=$(pwd)/ark-ecosystem.sh
Icon=$(pwd)/$ARK_ICON_PATH
Terminal=true
Categories=Utility;Development;"

install_shortcut() {
    local entry_path="$1"
    echo "$ARK_DESKTOP_ENTRY" > "$entry_path"
    chmod +x "$entry_path"
    echo "🛸 Shortcut created at $entry_path"
}

case "$shortcut_choice" in
    1)
        start_menu_path="$HOME/.local/share/applications/ark-ecosystem.desktop"
        install_shortcut "$start_menu_path"
        ;;
    2)
        desktop_path="$HOME/Desktop/ark-ecosystem.desktop"
        install_shortcut "$desktop_path"
        ;;
    3)
        taskbar_path="$HOME/.local/share/applications/ark-ecosystem.desktop"
        install_shortcut "$taskbar_path"
        # Note: taskbar/panel integration depends on your desktop environment.
        echo "🛡️ For most Linux DEs, taskbar icons use Start Menu entries. Pin manually if needed."
        ;;
    4)
        install_shortcut "$HOME/.local/share/applications/ark-ecosystem.desktop"
        install_shortcut "$HOME/Desktop/ark-ecosystem.desktop"
        echo "🛡️ For most Linux DEs, taskbar icons use Start Menu entries. Pin manually if needed."
        ;;
    5)
        echo "🛰️ Skipping shortcut creation."
        ;;
    *)
        echo "⚠️ [ERROR] Invalid selection. \"I'll guide you, Commander.\""
        ;;
esac

echo ""
echo "🌠 Commander, you are cleared to launch The ARK:"
echo "    ./ark-ecosystem.sh"
echo ""
echo "May The ARK be with you!"
