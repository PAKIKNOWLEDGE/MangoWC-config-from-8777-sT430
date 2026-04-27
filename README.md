# MangoWC Configuration for ThinkPad T430

This repository contains a highly customized configuration for **MangoWC**, a Wayland compositor based on `wlroots` that features a Niri-style scrolling layout. This setup is specifically optimized for the **ThinkPad T430** (1600x900) to balance modern workflow aesthetics with aging hardware performance.

![swappy-20260424\_182555.png](https://pakiknowledge.pages.dev/img1/swappy-20260425_142332.png)

## 🛠 Features & Optimizations

* **Scroller-First Workflow**: Forced `scroller` layout across all workspaces (Tags 1-9) with `scroller_focus_center` enabled for a consistent, centered focus similar to Niri.
* **Hardware-Specific Tuning**:
  * **Animations**: Adjusted durations to **400ms** to ensure smooth transitions on the Intel HD Graphics / RTX 4060.
  * **Visuals**: Shadows and heavy blur passes are disabled to save GPU cycles, maintaining a clean and responsive UI.
  * **Gaps**: Tight spacing (`gappih: 2`, `gappoh: 4`) to maximize screen real estate on the 1600x900 display.
* **Modular Keybindings**: Core logic is separated into `bind.conf` for easier maintenance, using a customized "Vim-ish" navigation style.
* **System "Escape Hatch"**: `Super + Return` is mapped to **Kitty** to ensure terminal access even if the GUI components hang.

## ⌨️ Keybindings Highlights


| **Shortcut**    | **Action**        | **Description**                                    |  |  |  |
| --------------- | ----------------- | -------------------------------------------------- | - | - | - |
| `Super + r`     | Reload Config     | Hot-reload the MangoWC configuration.              |  |  |  |
| `Super + Space` | App Launcher      | Launches`fuzzel`for quick application access.      |  |  |  |
| `Super + h/l`   | Focus Left/Right  | Navigate through the window scroll.                |  |  |  |
| `Super + f`     | Toggle Maximize   | Vertical maximize for the current column.          |  |  |  |
| `Super + v`     | Clipboard History | Access`cliphist`via a`wofi`dmenu interface.        |  |  |  |
| `Print`         | Screenshot        | Regional capture using`grim`,`slurp`, and`swappy`. |  |  |  |

## 📦 Component Stack

* **Bar**: `Waybar`
* **Input Method**: `fcitx5`
* **Wallpaper**: `waypaper`
* **Notification**: `mako`
* **OSD**: `swayosd-server` for physical volume/brightness key feedback
* **Idle Management**: `swayidle` with `swaylock` integration

## 🚀 Installation

1. Clone this config to `~/.config/mango/`.
2. Ensure `autostart.sh` is executable:

   `chmod +x \~/.config/mango/autostart.sh`
3. Identify your monitor name via `wlr-randr` and update the `monitor` line in `config.conf` (default is `LVDS-1`).
4. Launch `mango` from your TTY.

   Note: The "Scroller" layout and keybindings are heavily inspired by Niri but adapted for MangoWC's unique implementation.
