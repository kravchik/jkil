
## Switch (mostly) Ctrl <-> Alt

[Switch Alt<->Ctrl](ctralt/README.md)

Mac has many strange decisions but its `⌘+c`, `⌘+v` - is far far far more convenient than win/linux `Ctrl+c`, `Ctrl+v` because you can use your thumb to press ⌘ instead of pinky Ctrl. Once you used to it, there is no turning back.

Note. This is not just a simple switch of `Ctrl <-> Alt` keys!  Because in that case, one should also do something with all the hot-keys many of which are not a simple task to remap (because they are system - Alt+Tab, Alt+F4, etc.). Let alone many app-specific hot-keys.
So, in this solution - we are mostly remapping just a simple `Alt+key` and some specially selected hot-keys (like `Shift+Ctrl+V` for special Paste).

A list of remappings:

* `Alt+KEY` -> `Ctrl+KEY` (where key is any key from `a` to `z`)
* `Ctrl+KEY` -> `Alt+KEY` (where key is any key from `a` to `z`)

Because of IntelliJ hot-keys. Not sure if it will hinder in other apps.
* `Alt+SPACE` -> `Ctrl+SPACE`
* `Alt+Shift+SPACE` -> `Ctrl+Shift+SPACE`
* `Alt+Shift+z` -> `Ctrl+Shift+z`
* `Alt+Shift+v` -> `Ctrl+Shift+v`

## Win

Install [AutoHotkey](https://www.autohotkey.com/) and use [this config file](jkil.ctrlalt.ahk).

