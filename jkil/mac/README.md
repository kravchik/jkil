# JKIL Arrows (MAC)

```
  I        ↑
J K L    ← ↓ →
```

![Image of JKIL](../../images/jkil-keyboard.jpg)

Mapping of `[Right Command ⌘] + ijkl` to the cursor keys.

1. Install (Karabiner)[https://pqrs.org/osx/karabiner/]
2. Add jkil_arrows.json file to `[home]/.config/karabiner/assets/complex_modifications/`
3. In Karabiner-Elements Preferences
   1. Select `Complex Modifications`
   2. Select `Add rule`
   3. Scroll to find `JKIL cursor` and select `Enable` or `Enable All`

In contrast with Win/Linux versions, remaps `⌘+u` to `⌘+left`, and `⌘+o` to `⌘+right` (navigate to start/end of the string). This is because `⌘+left/right` in Mac works the same way as `Home/End` in Win/Linux. And as moving a cursor to start/end of the line is a more frequent action than scroll to the start/end of the document - it is done this way here too.