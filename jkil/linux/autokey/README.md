
### JKIL Arrows (linux)
# DEPRECATED IN FAVOR OF XKB

```
  I        ↑
J K L    ← ↓ →
```

![Image of JKIL](../../../images/jkil-keyboard.jpg)

In this doc only the difference (linux specific) with [the main concept](../../README.md) is described.

[AutoKey](https://github.com/autokey/autokey) is used to generate press events.

All events are sent from `Alt` + `jkl`. This will prevent some short-cuts from working (`Alt` + `f` opening File menu, for example). This is because AutoKey doesn't distinguish between right and left `Alt` so it is impossible here to bind `right Alt` only.
      
Also, instead of binding `Ctrl Alt + jkil` to navigate-fast, `Win Alt + jkil` mapped instead (because there are too many `Ctrl Alt + something` short-cuts everywhere).

## Setup
* Install AutoKey
* copy `CURSOR` directory to `.config/autokey/data/`
* restart AutoKey