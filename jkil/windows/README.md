# JKIL Arrows (Windows)

```
  I        ↑
J K L    ← ↓ →
```

![Image of JKIL](../../images/jkil-keyboard.jpg)

In this doc only the difference (Windows specific) with [the main concept](../README.md) is described.

Uses [AutoHotkey](https://www.autohotkey.com/).

## Setup

1. Install AutoHotkey.
2. Apply either [ralt-to-appskey.reg](ralt-to-appskey.reg) or [swap-lctrl-lalt-and-ralt-to-appskey.reg](swap-lctrl-lalt-and-ralt-to-appskey.reg), then sign out or reboot so physical `Right Alt` becomes `AppsKey`.
3. Run either [jkil.x10.ahk](jkil.x10.ahk) or [jkil.by-word.ahk](jkil.by-word.ahk).
4. Optionally also run [extras.ahk](extras.ahk).
5. Optional: add the scripts you use to Windows startup if you want them enabled after login.

## Recommended Approach

On Windows, especially with layouts that treat `Right Alt` as `AltGr`, remapping physical `Right Alt` to `AppsKey` turned out to be more reliable than trying to work around `AltGr` behavior in AutoHotkey itself.

The recommended setup is:

1. remap physical `Right Alt` to `AppsKey`
2. use one of the `jkil.*.ahk` scripts, which listen to `AppsKey` as the layer key

This avoids layout-specific `AltGr` quirks, including cases where `Right Alt` behaves like `Ctrl+Alt` on some non-English layouts.

## Files

* [jkil.x10.ahk](jkil.x10.ahk) for the `x10` profile (`Left Ctrl` means repeat 10 times)
* [jkil.by-word.ahk](jkil.by-word.ahk) for the by-word profile (`Left Ctrl` means normal `Ctrl`)
* [extras.ahk](extras.ahk) for extra helpers such as `CapsLock` language switch and suppressing stand-alone `Alt`/`Win` menu behavior
* [ralt-to-appskey.reg](ralt-to-appskey.reg) to remap physical `Right Alt` to `AppsKey`
* [swap-lctrl-lalt-and-ralt-to-appskey.reg](swap-lctrl-lalt-and-ralt-to-appskey.reg) to keep swapped left `Ctrl/Alt` and also remap physical `Right Alt` to `AppsKey`
* [reset-scancode-map.reg](reset-scancode-map.reg) to remove all `Scancode Map` remaps

## Profiles

* [jkil.x10.ahk](jkil.x10.ahk): left `Ctrl` is treated as a multiplier, so `physical Right Alt + left Ctrl + j` moves left 10 times.
* [jkil.by-word.ahk](jkil.by-word.ahk): left `Ctrl` keeps its normal meaning, so `physical Right Alt + left Ctrl + j` sends `Ctrl+Left`.

## Extras

* [extras.ahk](extras.ahk): `CapsLock` switches the input language/layout via `Win+Space`.
* [extras.ahk](extras.ahk): stand-alone left `Alt` is suppressed, so tapping it does not focus the application menu.
* [extras.ahk](extras.ahk): stand-alone left/right `Win` are suppressed, so tapping them does not open the Start menu.
* [extras.ahk](extras.ahk): `Alt` and `Win` still work as modifiers in combinations such as `Alt+Tab` or `Win+E`.

## Main hotkeys

* physical `Right Alt` + `j/k/i/l` -> left/down/up/right
* physical `Right Alt` + `m/n` -> backspace/delete
* physical `Right Alt` + `u/o` -> home/end
* physical `Right Alt` + `y/h` -> page up/page down
* physical `Right Alt` + `;` -> enter

In this setup, physical `Right Alt` is remapped to `AppsKey`, and the scripts use that remapped key as the internal layer key. Left-hand modifiers are applied automatically while holding the same physical key.

* physical `Right Alt` + left `Shift` + `j` -> `Shift+Left`
* in the by-word profile: physical `Right Alt` + left `Ctrl` + `j` -> `Ctrl+Left`
* in the x10 profile: physical `Right Alt` + left `Ctrl` + `j` -> `Left` 10 times
* physical `Right Alt` + left `Alt` + `j` -> `Alt+Left`
* physical `Right Alt` + left `Win` + `j` -> `Win+Left`
* combinations also work, for example physical `Right Alt` + left `Shift` + `o` -> `Shift+End`
* in the by-word profile: physical `Right Alt` + left `Ctrl` + left `Shift` + `o` -> `Ctrl+Shift+End`

`Scancode Map` is one system-wide table. Applying one of these `.reg` files replaces the whole table, not just one remap. Use [reset-scancode-map.reg](reset-scancode-map.reg) to clear all such remaps.
