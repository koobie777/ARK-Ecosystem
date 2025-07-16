# 🛰️ THE ARK SUPREME MK1 – FLEET OPERATIONS GUIDE

> “All modules return to The ARK. All journeys begin anew.”

---

## 🌌 1. BOARDING THE ARK

**Step 1: Clone The ARK Ecosystem Meta-Repo**
```bash
git clone --recurse-submodules https://github.com/koobie777/ARK-Ecosystem.git
```

**Step 2: Run Setup & Initialize Shortcuts**
```bash
./ark-ecosystem-setup.sh
```
- Initializes dependencies and submodules.
- Optionally installs Start Menu, Desktop, and Taskbar shortcuts.

**Step 3: Launch The ARK**
```bash
./ark-ecosystem.sh
```
- **Cadet Mode** (default): Guided onboarding, explanations, ARK quotes.  
- **Expert Mode:** For seasoned Commanders.  
  ```bash
  ./ark-ecosystem.sh --theme expert
  ```

---

## 🛰️ 2. MODULES & MISSIONS

### ARK Main Menu

Each session launches into a persistent tmux window, always returning to the ARK Main Menu after every action.

**Menu Options:**
- Launch ARK Essentials (stable modules)
- Launch ARK Orbital Dock Modules (experimental/new)
- Launch System-Bay Features (auto-detected submodules, instant feature expansion)
- Promote system-bay scripts to experimental and essential modules directly from menu
- Show Fleet Status
- Switch Mode (Expert/Cadet/Voyager/Admiral/Sentinel/Instructor)
- View Documentation (fleet guide, project scope, module protocols)
- Create Shortcuts
- View Changelogs (meta-repo and modules)
- Exit (returns to menu, never exits tmux session)

> “When in doubt, return to the main menu—The ARK awaits.”

---

### MODULE OVERVIEW

#### F.O.R.G.E. (Fleet Operations ROM Generation Engine)
- Initiate, resume, or automate Android ROM builds.
- Supports Smart, Recovery, and ROM build types.
- All builds default to `~/home/android/<rom>-<device>` (override on prompt).

#### O.R.B.I.T.A.L. (Omnidirectional Resource Base Integration & Telemetry Assistant Liaison)
- Device diagnostics, driver checks, provisioning, and fleet telemetry.
- Automated detection and reporting.

#### Essentials, Theming Engine, System-Bay, and More
- ARK Essentials: Promoted flagship modules for stability and reliability.
- Theming Engine: Unified UI, error formatting, and ARK quote system.
- System-Bay: Rapid expansion pool—any submodule can be promoted instantly.
- Additional modules: Mass deployment, fleet orchestration, security, remote access, and future AI features.

---

## 🛸 3. PERSISTENCE & PROTOCOL

- **Mission-LT parameters:**  
  - All modules must operate in ONE tmux session.
  - All actions return to ARK Main Menu.
  - ARK error messages use:
    ```
    ⚠️ [ERROR TYPE]
    Location: [component]
    Fix: [solution]
    "I'll guide you, Commander."
    ```
  - All modules support Cadet and Expert modes.
  - All modules and submodules must have a `changelog.md` tracking updates and protocol compliance.
  - All features, scripts, and docs maintain ARK theming and terminology.
  - **System-Bay Promotion:** Any feature in system-bay can be promoted to experimental or essential module seamlessly.

---

## 🌠 4. CONTRIBUTION & CUSTOMIZATION

- Add new modules by following [docs/module-creation.md](docs/module-creation.md).
- Promote system-bay submodules as features/modules as needed.
- Every module and submodule must include a `changelog.md` documenting all changes, improvements, protocol compliance, and releases.
- Enhance the universal quote system for inspiration.
- All code, menus, and prompts must use ARK theming, terminology, and protocol.

---

## 🛰️ 5. TROUBLESHOOTING & SUPPORT

- Consult [docs/ark-ecosystem-project-scope.md](docs/ark-ecosystem-project-scope.md) for feature roadmap and module plans.
- Errors will never terminate your session—always guide and return.
- For help, select “Guide” from the Main Menu or review this document.
- For module history, protocol changes, and update info, view the respective `changelog.md` in each module and submodule.

---

> “The ARK is for every voyager—bring your device, bring your dream.”

**May The ARK be with you, Commander.**
