# 🛰️ ARK THEMEING – ESSENTIAL MODULE

> “Every command shines in ARK colors. Every prompt inspires the fleet.”

---

## Overview

**ARK Themeing** provides universal ARK styling, terminology, mode selection, and quote integration for all modules in The ARK Ecosystem.

- Persistent tmux session compliance
- Supports multiple modes: Cadet, Expert, Voyager, Admiral, Sentinel, Instructor, Custom (`--theme MODE`)
- ARK-styled error messages
- Menu, prompt, and UI theming
- Universal quote system integration
- Systems Bay for specialized theming submodules

---

## Usage

Source ARK Themeing functions in your scripts:

```bash
source /path/to/ark-themeing/ark-themeing.sh
ark_banner "Welcome aboard, Commander."
ark_error "MODULE ERROR" "ark-themeing" "Missing parameter" "I'll guide you, Commander."
ark_quote
ark_mode_prompt
```

To use specialized theming for each mode, source the corresponding script from `ark-themeing-systems-bay/`:

```bash
# Cadet Mode
source /path/to/ark-themeing/ark-themeing-systems-bay/cadet-theme/cadet-theme.sh
ark_cadet_banner

# Expert Mode
source /path/to/ark-themeing/ark-themeing-systems-bay/expert-theme/expert-theme.sh
ark_expert_banner

# Voyager Mode
source /path/to/ark-themeing/ark-themeing-systems-bay/voyager-theme/voyager-theme.sh
ark_voyager_banner

# Admiral Mode
source /path/to/ark-themeing/ark-themeing-systems-bay/admiral-theme/admiral-theme.sh
ark_admiral_banner

# Sentinel Mode
source /path/to/ark-themeing/ark-themeing-systems-bay/sentinel-theme/sentinel-theme.sh
ark_sentinel_banner

# Instructor Mode
source /path/to/ark-themeing/ark-themeing-systems-bay/instructor-theme/instructor-theme.sh
ark_instructor_banner

# Custom Mode
source /path/to/ark-themeing/ark-themeing-systems-bay/custom-theme/custom-theme.sh
ark_custom_banner
```

---

## Available Modes & Submodules

- **Cadet:** Detailed prompts, ARK quotes  
  - `ark-themeing-systems-bay/cadet-theme/cadet-theme.sh`
- **Expert:** Minimal prompts, direct output  
  - `ark-themeing-systems-bay/expert-theme/expert-theme.sh`
- **Voyager:** Exploration-focused, extra tips  
  - `ark-themeing-systems-bay/voyager-theme/voyager-theme.sh`
- **Admiral:** Admin-oriented, system status  
  - `ark-themeing-systems-bay/admiral-theme/admiral-theme.sh`
- **Sentinel:** Security alerts, compliance  
  - `ark-themeing-systems-bay/sentinel-theme/sentinel-theme.sh`
- **Instructor:** Training-focused, step explanations  
  - `ark-themeing-systems-bay/instructor-theme/instructor-theme.sh`
- **Custom:** User-defined prompts and theming  
  - `ark-themeing-systems-bay/custom-theme/custom-theme.sh`

---

## Protocol Compliance

- Persistent tmux session
- Return to ARK main menu after completion
- Directory protocol: builds default to `~/home/android/<rom>-<device>`
- All errors follow ARK format
- All changes logged in `changelog.md`

---

## Mission-LT Protocol

See [mission-lt-protocol.md](../mission-lt-protocol.md) for full compliance standards.

---

## Contributing

- Add new ARK quotes to `quotes.txt`
- Add/expand modes in `ark-themeing.sh` or create new systems in `ark-themeing-systems-bay/`
- Use ARK terminology in all additions
- Update `changelog.md` with every change

**May The ARK be with you!**
