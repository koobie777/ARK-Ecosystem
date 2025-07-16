# 🏛️ ARK-Ecosystem – Meta-Repository & Fleet Protocol

**Version: v2.0.0 (Fleet Renaissance+)**  
**The ARK – Modular Android Build & Admin Fleet**  
**Commander: koobie777**

---

> **ADMIRAL'S LOG:**  
> ARK-Ecosystem is the meta-repo at the heart of The ARK. All modules, tools, and protocols are managed as git submodules for seamless fleet-wide deployment, upgrade, synchronization, and instant modular evolution.  
> **Modules, submodules, and system-bay scripts can be promoted or demoted at will—The ARK adapts.**

---

## ✨ Ecosystem Features

- **Meta-Repository Protocol:**  
  - Modular system: All ARK modules are standalone Git repositories, included as submodules for unified fleet control.
  - **Promotion & Demotion Pipeline:**  
    - Drag-and-drop protocol: Easily add, promote, or demote scripts or modules by moving them between directories.
    - **System-Bay Inheritance:**  
      - Any script dropped into a `system-bay/` directory inherits its parent directory name as its identity.
      - System-bay submodules can be promoted to full modules in `ark-ecosystem-orbital-dock/` (experimental) or `ark-ecosystem-essentials/` (stable/flagship).
      - Promoted modules may be demoted back to system-bay or a submodule as needed.
    - **Embedded/Baked-In Features:**  
      - Functions, code blocks, or scripts can be baked into main modules (e.g., panels inside `ark-menu.sh`).
      - These features can be extracted and promoted or returned to embedded status.
    - **Sibling Scripts:**  
      - Standalone scripts next to main module scripts (e.g., `ark-system-info.sh` and `ark-system-info-time.sh`)
      - Sibling scripts can be promoted/demoted as modules or submodules.
  - **Instant Expansion:**  
    - Drag-and-drop any `.sh` script into any module, system-bay, or dock directory for instant detection and execution inclusion.
    - The ARK menu and loader protocols auto-detect these changes.
  - **Flexible Structure:**  
    - No restriction on submodule location—modules, system-bay features, and baked-in code are all part of the promotion pipeline.
    - Easily reorganize your fleet by moving scripts between directories and updating the ARK-Ecosystem repo.
- **Fleet Synchronization:**  
  - One pull updates all modules fleet-wide.
  - All devices run the same tmux session, main menu, and protocol logic.
- **Unified ARK Protocols:**  
  - Error handling, debug reporting, and UI theming are standardized.
  - All modules and menus return to the ARK main menu after execution.

---

## 🚀 Installation & Fleet Sync

```bash
git clone --recurse-submodules https://github.com/koobie777/ARK-Ecosystem.git
cd ARK-Ecosystem
git submodule update --init --recursive
```

### 🛸 Update Fleet

```bash
git pull
git submodule update --remote --merge
```

---

## 🛠️ Module Management & Promotion/Demotion Protocol

### Promote a Script or Submodule

1. **From System-Bay to Experimental Module:**  
   - Drag-and-drop the script from `system-bay/` to `ark-ecosystem-orbital-dock/<ModuleName>/`
   - Update `.gitmodules` if the module is a standalone repo.
   - Commit changes.

2. **From Experimental to Essential:**  
   - Move the module to `ark-ecosystem-essentials/<ModuleName>/`
   - Commit, update submodule pointer.

3. **Baked-In/Embedded to Standalone:**  
   - Extract functions/code from main module (e.g., from `ark-menu.sh`) and save as a script in dock or essentials.

### Demote a Module to a Submodule/System-Bay

- Move the module or script from dock/essentials to a system-bay directory or as a sibling script.
- Update menu entries and documentation for its new status.
- Commit changes.

### Drag-and-Drop Protocol

- **Add/Promote:** Drop any `.sh` script in dock, essentials, or system-bay for instant inclusion.
- **Demote:** Move module script back to system-bay or as a submodule to any parent module.
- The ARK auto-detects changes at runtime; no restart required.

---

## 🗂️ Directory Structure

```
ARK-Ecosystem/
├── README.md
├── docs/
│   ├── changelog.md
│   ├── module-creation.md
│   ├── module-uninstall.md
│   ├── ark-ecosystem-guide.md
│   ├── ark-ecosystem-project-scope.md
│   └── [other protocol docs]
├── ark-ecosystem-orbital-dock/
│   ├── ARK-Orbital-Command/
│   │   └── ark-menu/
│   │        └── ark-menu-systems-bay/
│   ├── ARK-Forge/
│   ├── [other experimental modules...]
├── ark-ecosystem-essentials/
│   ├── ark-themeing/
│   ├── [promoted essential modules...]
├── assets/
│   └── icons/
├── logs/
├── reports/
├── ark-ecosystem.sh
├── ark-ecosystem-setup.sh
└── .gitmodules
```

---

## 🛰️ ARK Protocols

- All scripts run in a single tmux session.
- ARK theming: cosmic menus, docs, and scripts.
- Error handling:
    ```
    ⚠️ [ERROR TYPE]
    Location: [component]
    Fix: [solution]
    "I'll guide you, Commander."
    ```
- Debug/status reports before returning.
- **Promotion/demotion pipeline:**  
    - System-bay submodule → Experimental module → Essential module → Core protocol, or vice versa.
    - Embedded/baked-in features, sibling scripts, and standalone modules can all move freely within this structure.
- Modes: Cadet, Expert, Voyager, Admiral, Sentinel, Instructor, and custom.

---

## 🌌 Roadmap & Expansion

- System-bay features as first-class citizens—rapid fleet evolution.
- Drag-and-drop modularity for instant updates, promotions, and demotions.
- Fleet-wide auto-detection for new features.
- See [docs/ark-ecosystem-project-scope.md](docs/ark-ecosystem-project-scope.md) for roadmap.

---

## 🤝 Contributing

- Fork, branch, PR—see [docs/module-creation.md](docs/module-creation.md)
- Promote/demote scripts or modules using drag-and-drop protocol.
- All contributions must maintain ARK theming and metaphors.

---

## 📡 Support & Contact

- [GitHub Issues](https://github.com/koobie777/ARK-Ecosystem/issues)
- ARK Discord & Fleet Channels
- Commander: koobie777

---

> “If you can dream it, you can build it—on The ARK.”

**The ARK is your fleet. Shape its future.**  
**May The ARK (Adaptive Resource Kontinuum) be with you, Commander!**
