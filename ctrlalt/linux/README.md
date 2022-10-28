## Switch Left Ctrl <-> Alt

[Switch Alt<->Ctrl](ctralt/README.md)

Mac has many strange decisions but its `⌘+c`, `⌘+v` - is far far far more convenient than win/linux `Ctrl+c`, `Ctrl+v` because you can use your thumb to press ⌘ instead of pinky Ctrl. Once you used to it, there is no turning back.

## Linux

In the file

```/usr/share/X11/xkb/keycodes/evdev```

Just switch key codes `LAlt <-> LCtrl`           
                                     
```
//  	  <LALT> = 64;
//  	  <LCTL> = 37;
	<LALT> = 37;
	<LCTL> = 64;
```