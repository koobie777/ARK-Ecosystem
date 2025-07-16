#!/bin/bash
# 🛰️ THE ARK ECOSYSTEM MAIN LAUNCHER
# Mission-LT protocol: ARK-themed, modular, persistent tmux session, multi-mode, error-proof

if [ -f "modules/common/quote.sh" ]; then
    bash modules/common/quote.sh
else
    echo "🌌 \"May The ARK guide your builds through any cosmic storm.\""
fi

if [ -z "$TMUX" ]; then
    exec tmux new-session -A -s ARK-Ecosystem "$0"
    exit 0
fi

ark_main_menu() {
    clear
    echo "🚀 THE ARK ECOSYSTEM – MAIN MENU"
    echo "=========================================="
    echo "1) Launch ARK Essentials"
    echo "2) Launch ARK Orbital Dock Modules"
    echo "3) Show ARK Fleet Status"
    echo "4) Switch Mode (Expert/Cadet/Voyager/Admiral/Sentinel/Instructor)"
    echo "5) View ARK Documentation"
    echo "6) Create ARK Desktop/Start Menu/Taskbar Shortcuts"
    echo "7) Exit (returns to menu, never exits tmux session)"
    echo "------------------------------------------"
    echo "Current Mode: ${ARK_MODE:-Expert}"
    echo "=========================================="
    echo ""
}

ARK_MODE="${ARK_MODE:-Expert}"

ark_toggle_mode() {
    local modes=("Expert" "Cadet" "Voyager" "Admiral" "Sentinel" "Instructor")
    echo "🛸 Select ARK Mode:"
    select mode in "${modes[@]}"; do
        if [[ " ${modes[@]} " =~ " ${mode} " ]]; then
            export ARK_MODE="$mode"
            echo "🌌 Mode set to $mode. All menus and prompts will adapt."
            sleep 1
            break
        fi
    done
}

launch_essentials() {
    if [ -d "ark-ecosystem-essential" ]; then
        echo "🛰️ Launching ARK Essentials..."
        bash ark-ecosystem-essential/ark-themeing/ark-themeing.sh
    else
        echo "⚠️ [ERROR] Essentials directory not found."
        echo "\"I'll guide you, Commander.\""
        sleep 2
    fi
}

launch_orbital_dock() {
    if [ -d "ark-ecosystem-orbital-dock" ]; then
        echo "🛰️ Scanning for available modules in ARK Orbital Dock..."
        local modules=()
        for mod in ark-ecosystem-orbital-dock/*; do
            if [ -d "$mod" ] && [ -f "$mod/README.md" ]; then
                modules+=("$(basename "$mod")")
            fi
        done
        if [ ${#modules[@]} -eq 0 ]; then
            echo "⚠️ [ERROR] No modules detected in Orbital Dock."
            echo "\"I'll guide you, Commander.\""
            sleep 2
            return
        fi
        echo "🪐 Select a module to launch:"
        select dockmod in "${modules[@]}"; do
            if [ -n "$dockmod" ]; then
                moddir="ark-ecosystem-orbital-dock/$dockmod"
                if [ -f "$moddir/${dockmod,,}.sh" ]; then
                    bash "$moddir/${dockmod,,}.sh"
                elif [ -f "$moddir/README.md" ]; then
                    less "$moddir/README.md"
                else
                    echo "⚠️ [ERROR] No launchable script found in $dockmod."
                    echo "\"I'll guide you, Commander.\""
                    sleep 2
                fi
                break
            fi
        done
    else
        echo "⚠️ [ERROR] Orbital Dock directory not found."
        echo "\"I'll guide you, Commander.\""
        sleep 2
    fi
}

fleet_status() {
    echo "🛰️ ARK Fleet Status:"
    echo "Essentials: $(ls -1 ark-ecosystem-essential 2>/dev/null | wc -l) modules"
    echo "Orbital Dock: $(ls -1 ark-ecosystem-orbital-dock 2>/dev/null | wc -l) modules"
    echo "Logs: $(ls -1 ark-ecosystem-logs 2>/dev/null | wc -l) files"
    sleep 2
}

view_docs() {
    if [ -d "ark-ecosystem-docs" ]; then
        echo "🛰️ Available Documentation:"
        docs=($(ls ark-ecosystem-docs/*.md 2>/dev/null))
        if [ ${#docs[@]} -eq 0 ]; then
            echo "⚠️ [ERROR] No documentation found."
            echo "\"I'll guide you, Commander.\""
            sleep 2
            return
        fi
        select doc in "${docs[@]}"; do
            [ -n "$doc" ] && less "$doc" && break
        done
    else
        echo "⚠️ [ERROR] Documentation directory not found."
        echo "\"I'll guide you, Commander.\""
        sleep 2
    fi
}

create_shortcuts() {
    ARK_ICON_PATH="ark-ecosystem-assets/ark-ecosystem-icons/ark-ecosystem-icon.png"
    ARK_DESKTOP_ENTRY="[Desktop Entry]
Type=Application
Name=THE ARK ECOSYSTEM
Comment=Launch ARK-Ecosystem Main Menu
Exec=$(pwd)/ark-ecosystem.sh
Icon=$(pwd)/$ARK_ICON_PATH
Terminal=true
Categories=Utility;Development;"
    echo "🛸 Shortcut Creation Menu"
    echo "  1) Start Menu Shortcut"
    echo "  2) Desktop Icon"
    echo "  3) Taskbar Icon (Linux only)"
    echo "  4) All of the above"
    echo "  5) Cancel"
    read -p "Commander, select your option [1-5]: " shortcut_choice
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
            echo "🛡️ For most Linux DEs, taskbar icons use Start Menu entries. Pin manually if needed."
            ;;
        4)
            install_shortcut "$HOME/.local/share/applications/ark-ecosystem.desktop"
            install_shortcut "$HOME/Desktop/ark-ecosystem.desktop"
            echo "🛡️ For most Linux DEs, taskbar icons use Start Menu entries. Pin manually if needed."
            ;;
        5)
            echo "🛰️ Shortcut creation cancelled."
            ;;
        *)
            echo "⚠️ [ERROR] Invalid selection. \"I'll guide you, Commander.\""
            ;;
    esac
    sleep 2
}

while true; do
    ark_main_menu
    read -p "Commander, choose your mission [1-7]: " choice
    case "$choice" in
        1) launch_essentials ;;
        2) launch_orbital_dock ;;
        3) fleet_status ;;
        4) ark_toggle_mode ;;
        5) view_docs ;;
        6) create_shortcuts ;;
        7) echo "🛸 Returning to ARK Main Menu. Session persists in tmux. May The ARK be with you!" ;;
        *) echo "⚠️ [ERROR] Invalid selection. \"I'll guide you, Commander.\""; sleep 1 ;;
    esac
done
