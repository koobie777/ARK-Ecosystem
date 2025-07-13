# 🛰️ THE ARK SUPREME MK1 – FLEET OPERATIONS GUIDE

> “All modules return to The ARK. All journeys begin anew.”

---

## 🌌 1. BOARDING THE ARK

**Step 1: Clone The ARK Ecosystem**
```bash
git clone --recurse-submodules <your-ark-ecosystem-repo-url>
```

**Step 2: Launch The ARK**
```bash
./ark-launcher.sh
```
- **Cadet Mode** (default): Guided onboarding, explanations, ARK quotes.  
- **Expert Mode:** For seasoned Commanders.  
  ```bash
  ./ark-launcher.sh --theme expert
  ```

---

## 🛰️ 2. MODULES & MISSIONS

### ARK Main Menu

Each session launches into a persistent tmux window, returning you to the ARK Main Menu after every action.

**Menu Options:**
- Smart Build
- Recovery Build
- ROM Build
- Sync Only
- Resume Build _(if available)_
- Device Manager
- Fleet Status
- Guide
- Exit

> “When in doubt, return to the main menu—The ARK awaits.”

---

### MODULE OVERVIEW

#### F.O.R.G.E. (Fleet Operations ROM Generation Engine)
- Initiate, resume, or automate Android ROM builds.
- Supports “Smart,” “Recovery,” and “ROM” build types.
- All builds default to `~/home/android/<rom>-<device>` (override on prompt).

#### O.R.B.I.T.A.L. (Omnidirectional Resource Base Integration & Telemetry Assistant Liaison)
- Device diagnostics, driver checks, provisioning, and fleet telemetry.
- Automated detection and reporting.

#### A.D.M.I.R.A.L., F.L.E.E.T., and More
- [Planned] Mass deployment, fleet orchestration, and advanced management.

---

## 🛸 3. PERSISTENCE & PROTOCOL

- **All actions occur in ONE tmux session.** Never lose progress or state.
- **Never exit on errors.** All error messages follow:
  ```
  ⚠️ [ERROR TYPE]
  Location: [component]
  Fix: [solution]
  "I'll guide you, Commander."
  ```
- **Return to ARK Main Menu after every task.**
- **Cadet/Expert Mode:** Toggle on launch or in-session.

---

## 🌠 4. CONTRIBUTION & CUSTOMIZATION

- Add new modules by following [MODULE_TEMPLATE.md](MODULE_TEMPLATE.md).
- Enhance the universal quote system for inspiration.
- All code, menus, and prompts must use ARK theming, terminology, and protocol.

---

## 🛰️ 5. TROUBLESHOOTING & SUPPORT

- Consult [PROJECT_SCOPE.md](PROJECT_SCOPE.md) for feature roadmap and module plans.
- Errors will never terminate your session—always guide and return.
- For help, select “Guide” from the Main Menu or review this document.

---

> “The ARK is for every voyager—bring your device, bring your dream.”

**May The ARK be with you, Commander.**
