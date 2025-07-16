# 🛰️ ARK-Ecosystem – Module Creation Protocol

**Version: v2.1.2 (Fleet Renaissance+)**  
**Commander: koobie777**

---

> “Every new module strengthens The ARK. Modularity is our propulsion.”

---

## 🌌 OVERVIEW

This protocol guides Commanders in creating, integrating, evolving, promoting, and demoting modules in The ARK Ecosystem (`@koobie777/ARK-Ecosystem`).  
Modules can be standalone repos, embedded features, sibling scripts, drop-in system-bay scripts, or baked directly into the main code of another module (such as panels inside `ark-menu.sh`).  
Submodules do NOT have to be in a system-bay to be promoted or functional; modules may include embedded/baked-in features, sibling scripts, or system-bay integrations.  
You can drag-and-drop scripts to promote or demote them at any time.

---

## 1. MODULE & SUBMODULE TYPES

- **Standalone Module:**  
  - Independent repo with its own main script (e.g., `ark-system-info.sh`)
- **Embedded/Baked-In Feature:**  
  - Logic or mini-modules included directly in the main code (e.g., panel or menu functions inside `ark-menu.sh`)
  - Can be extracted and promoted to a standalone script or module as needed.
- **Sibling Script:**  
  - Standalone scripts tightly coupled to the main module (e.g., `ark-system-info.sh` alongside `ark-system-info-time.sh`)
- **System-Bay Submodule:**  
  - Drop `.sh` scripts into a `system-bay/` directory for instant feature expansion and auto-detection.
  - **System-bay inherits the parent module's name** for identity and grouping (e.g., `ARK-System-Info/system-bay/ark-system-info-extra.sh`).
  - Can be promoted to experimental modules or essentials, or demoted back.
- **Integrated Submodule:**  
  - Any module can contain or source submodules from any directory structure.

---

## 2. CREATION & RECOMMENDED STRUCTURE

When building modules for The ARK Ecosystem, use a directory structure that reflects the modular, nested, and extensible nature of The ARK.  
Here is the recommended structure for maximum flexibility and protocol compliance:

```plaintext
ARK-<Module-Name>/
├── README.md
├── ark-<module-name>.sh                  # Main module script
├── <module-name>-panel.sh                # Embedded/Baked-in panel or feature (optional)
├── <module-name>-time.sh                 # Sibling script (optional)
├── system-bay/                           # System-bay: drag-and-drop expansion pool (inherits module name)
│   ├── ark-<module-name>-extra.sh
│   ├── ark-<module-name>-diagnostics.sh
│   └── [other scripts, each inherits "<Module-Name>" identity]
├── assets/
│   └── icons/
├── docs/
│   ├── changelog.md                      # Required for all modules/submodules
│   └── module-protocol.md                # Recommended for usage, protocol, onboarding
├── tests/
│   └── [test scripts]
├── [additional features, configs, or scripts]
```

**Key notes:**
- All scripts in `system-bay/` MUST be named so they inherit the parent module's name (e.g., `ark-system-info-extra.sh` for a module named `ARK-System-Info`).
- You may have sibling scripts, embedded features, and a system-bay directory for rapid prototyping and instant expansion.
- Any script—whether in the root, system-bay, or as a sibling—can be promoted to a full module or demoted to a submodule at any time.
- The ARK auto-detects and integrates all scripts present, enabling drag-and-drop updates.

---

## 3. DEVELOPMENT PROTOCOL

- **All scripts/features must:**  
  - Run inside the current tmux session (never exit tmux)
  - Return to ARK main menu after execution
  - Present debug/status report before exit
  - Use ARK-styled error handling (see README)
  - Be modular and copy/paste-ready
  - Support both Cadet (guided) and Expert (minimal) modes
  - Include a version header:  
    `# ARK-<Module-Name> v1.0.0`
- **Embedded/Baked-In Panel Example:**  
  - Panel logic as a function inside a module's main script:
    ```bash
    panel_show() {
      echo "🛰️ System Info Panel"
      # Panel code here
    }
    ```
- **Sibling, system-bay, and integrated submodules:**  
  - Can be sourced, run, or called as standalone scripts or as part of embedded logic.

---

## 4. LOCAL TESTING

- Clone repo locally:
    ```bash
    git clone https://github.com/<your-username>/ARK-<Module-Name>.git
    cd ARK-<Module-Name>
    chmod +x ark-<module-name>.sh
    ./ark-<module-name>.sh
    ```
- Test:
  - Menu integration, debug/status reports, error handling, embedded panel execution, submodule sourcing (baked-in, sibling, system-bay)

---

## 5. MODULE PROMOTION/DEMOTION IN ARK-Ecosystem

- **Promote a Script/Module:**  
  - Drag script from system-bay or sibling location to `ark-ecosystem-orbital-dock/<ModuleName>/` for experimental modules.
  - Move to `ark-ecosystem-essentials/<ModuleName>/` for mature/flagship modules.
  - Extract embedded code to standalone script for promotion.
  - Update `.gitmodules` if converting to a standalone repo.
  - Commit changes.
- **Demote a Module:**  
  - Move module from dock/essentials back to a system-bay or as a script inside another module.
  - Update menu entries and documentation for its new status.
  - Commit changes.

---

## 6. INTEGRATION & MENU PROTOCOL

- Add menu entry in `ark-ecosystem.sh`, or via auto-detection (system-bay, dock, essentials).
    ```bash
    # Example
    echo " 12) 🛰️  System Info"
    ./ark-ecosystem-orbital-dock/ARK-System-Info/ark-system-info.sh
    ```
- **Embedded Panel Example (inside main module):**
    ```bash
    # In ark-menu.sh
    show_panel() {
      echo "🛰️ ARK Menu Panel"
      # Panel logic here
    }
    ```
    - Panel can be promoted to a standalone script if needed.
- **Sibling Submodule Example:**
    ```bash
    ./ark-ecosystem-orbital-dock/ARK-System-Info/ark-system-info-time.sh
    ```

---

## 7. DOCUMENTATION

- `docs/changelog.md` – Required for all modules/submodules
- `docs/module-protocol.md` – Recommended for usage, protocol, and onboarding
- `README.md` – Features, version, ARK theming

---

## 8. UPDATE & MAINTAIN

- Commit & push updates to your module repo as needed.
- In ARK-Ecosystem, update the submodule pointer:
    ```bash
    git submodule update --remote ark-ecosystem-orbital-dock/ARK-<Module-Name>
    git commit -am "Update ARK-<Module-Name> to latest version"
    git push
    ```
- Log all changes in changelog.md.

---

## 9. ARK BEST PRACTICES

- Modular, copy/paste-ready, tmux-friendly scripts
- ARK theming & error handling
- Debug/status prompt before exit
- Documentation: install, usage, uninstall, changelog.md
- Version headers in all scripts
- Code, prompts, and docs must be ARK/space themed

---

> “Modules and scripts are free to move—promote, demote, embed, or expand.  
> The ARK adapts for every mission.  
> May The ARK be with you, Commander.”
