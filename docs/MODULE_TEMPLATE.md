# 🛰️ ARK MODULE TEMPLATE

> “All modules return to The ARK. All journeys begin anew.”

## PURPOSE

Standard for all ARK modules. Ensures protocol compliance, theming, error handling, modular expansion, and universal ARK inspiration.

---

## MODULE REQUIREMENTS

1. **Theming Support**
   - Honor `--theme` flag for Cadet (detailed) and Expert (minimal) modes.
2. **tmux Compliance**
   - Operate within the persistent ARK tmux session.
   - Always return to ARK Main Menu on completion or error.
3. **Error Handling**
   - Use ARK error format:
     ```
     ⚠️ [ERROR TYPE]
     Location: [component]
     Fix: [solution]
     "I'll guide you, Commander."
     ```
   - Never exit tmux or terminate session on errors.
4. **Directory Flexibility**
   - Default to `~/home/android/<rom>-<device>`
   - Prompt for override each build
5. **Modular Entry Point**
   - Provide a clear entry script for ARK module loader.
6. **Documentation**
   - Include a README.md in module directory detailing usage, flags, and protocol hooks.
7. **Return to Main Menu**
   - After all actions, control returns to ARK Main Menu.
8. **Unified Quotes**
   - To inspire Commanders, call the global quote system:
     ```bash
     bash modules/common/quote.sh
     ```
   - Add your own ARK quotes for future Commanders in `modules/common/quotes.txt`
9. **Theming & Contribution**
   - All text, prompts, and menus must use ARK terminology and theming.

---

## MODULE STRUCTURE EXAMPLE

```
/modules/ark-newmodule/
  module-entry.sh
  README.md
  helper-scripts/
```

---

## ADDING A MODULE

1. Fork the ARK Ecosystem.
2. Create a new directory in `/modules/`.
3. Follow the template above.
4. Ensure theming, error handling, and tmux compliance.
5. Document all flags, entry points, and return flow.
6. Use the ARK quote system for banners and inspiration.
7. Submit a pull request referencing the module and compliance.

---

**The ARK is for all Commanders. Expand the fleet!**
