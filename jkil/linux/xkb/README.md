
# JKIL Arrows (linux)

```
  I        ↑
J K L    ← ↓ →
```

![Image of JKIL](../../../images/jkil-keyboard.jpg)

`xkb` - is a set of configuration files located at `/usr/share/X11/xkb/`. It is a quite a sophisticated system used to configure everything, from layout to special keys.
There are several ways to work with it.

1. make changes directly to config files **(TODO, try to implement)**
2. make 'right' changes to config files so that the settings would be availble via Ubuntu's settings GUI  **(TODO, try to implement)**
3. get "compiled config", which is one file with all tweaks (used by Ubuntu), layouts, etc. compiled together. Modify it, and upload.

It is yet to manage #1, or #2 approach. Currently, I am using #3. It has one big disadvantage - when you make any change to keyboard settings, the system will recompile the configuration file and "forget" about your changes. So, you need to re-read the newly compiled configuration, apply changes, and upload. And, of course, you apply this compiled configuration after each restart.
But even given that - this approach is much better than Autokey.

### 1. Enable switching to 3rd level
In my configuration, I am using '3rd level' to define jkil cursor. And in order use it, its key should be defined.
![Image of setting](setting1.png)

### 2. Load compiled keyboard configuration
In this step, a compiled file with a full keyboard configuration should be "pulled" from the system.

`$ xkbcomp $DISPLAY output.xkb`

### 3. Edit output.xkb file.

'Types' in xkb are defining combinations of mod keys (shift, alt, etc) and how they select one of four levels in a specific key configuration.

In xkb_types section add:

```
    type "JKIL_TYPE" {
        modifiers= Shift+LevelThree;
        map[Shift]= Level2;
        map[LevelThree]= Level3;
        map[Shift+LevelThree]= Level3;
        //preserve[Shift+LevelThree]=Shift;
        level_name[Level1]= "Base";
        level_name[Level2]= "Shift";
        level_name[Level3]= "JKIL";
    };
```

'Symbols' in xkb are defining actual keys and how they behave in each of four 'levels'. In jkil configuration I am defining only 'action' field, so the configuration doesn't override symbols themselves.
Also, two groups are defined here with the same action. It is for two layouts.

In xkb_symbols section add:

```
    key <AC07> {//j : LEFT
        type= "JKIL_TYPE",
        actions[Group1]= [NoAction(),NoAction(),RedirectKey(keycode=<LEFT>, clearmods=LevelThree)],
        actions[Group2]= [NoAction(),NoAction(),RedirectKey(keycode=<LEFT>, clearmods=LevelThree)]
    };
    key <AC08> {//k : DOWN
        type= "JKIL_TYPE",
        actions[Group1]= [NoAction(),NoAction(),RedirectKey(keycode=<DOWN>, clearmods=LevelThree)],
        actions[Group2]= [NoAction(),NoAction(),RedirectKey(keycode=<DOWN>, clearmods=LevelThree)]
    };
    key <AD08> {//i : UP
        type= "JKIL_TYPE",
        actions[Group1]= [NoAction(),NoAction(),RedirectKey(keycode=<UP>, clearmods=LevelThree)],
        actions[Group2]= [NoAction(),NoAction(),RedirectKey(keycode=<UP>, clearmods=LevelThree)]
    };
    key <AC09> {//l : RIGHT
        type= "JKIL_TYPE",
        actions[Group1]= [NoAction(),NoAction(),RedirectKey(keycode=<RGHT>, clearmods=LevelThree)],
        actions[Group2]= [NoAction(),NoAction(),RedirectKey(keycode=<RGHT>, clearmods=LevelThree)]
    };

    key <AD07> {//u : HOME
        type= "JKIL_TYPE",
        actions[Group1]= [NoAction(),NoAction(),RedirectKey(keycode=<HOME>, clearmods=LevelThree)],
        actions[Group2]= [NoAction(),NoAction(),RedirectKey(keycode=<HOME>, clearmods=LevelThree)]
    };
    key <AD09> {//o : END
        type= "JKIL_TYPE",
        actions[Group1]= [NoAction(),NoAction(),RedirectKey(keycode=<END>, clearmods=LevelThree)],
        actions[Group2]= [NoAction(),NoAction(),RedirectKey(keycode=<END>, clearmods=LevelThree)]
    };
    key <AC10> {//; : ENTER
        type= "JKIL_TYPE",
        actions[Group1]= [NoAction(),NoAction(),RedirectKey(keycode=<RTRN>, clearmods=LevelThree)],
        actions[Group2]= [NoAction(),NoAction(),RedirectKey(keycode=<RTRN>, clearmods=LevelThree)]
    };
    key <AB07> {//m : BACKSPACE
        type= "JKIL_TYPE",
        actions[Group1]= [NoAction(),NoAction(),RedirectKey(keycode=<BKSP>, clearmods=LevelThree)],
        actions[Group2]= [NoAction(),NoAction(),RedirectKey(keycode=<BKSP>, clearmods=LevelThree)]
    };
    key <AB06> {//n : DELETE
        type= "JKIL_TYPE",
        actions[Group1]= [NoAction(),NoAction(),RedirectKey(keycode=<DELE>, clearmods=LevelThree)],
        actions[Group2]= [NoAction(),NoAction(),RedirectKey(keycode=<DELE>, clearmods=LevelThree)]
    };
    key <AD06> {//y : PGUP
        type= "JKIL_TYPE",
        actions[Group1]= [NoAction(),NoAction(),RedirectKey(keycode=<PGUP>, clearmods=LevelThree)],
        actions[Group2]= [NoAction(),NoAction(),RedirectKey(keycode=<PGUP>, clearmods=LevelThree)]
    };
    key <AC06> {//h : PGDOWN
        type= "JKIL_TYPE",
        actions[Group1]= [NoAction(),NoAction(),RedirectKey(keycode=<PGDN>, clearmods=LevelThree)],
        actions[Group2]= [NoAction(),NoAction(),RedirectKey(keycode=<PGDN>, clearmods=LevelThree)]
    };

```

*In my configuration, in Cyrillic group, ENTER won't work until I remove an explicit type[group2]= "ALPHABETIC" for AC10 semicolon key. For other keys there is no such exception.*

### 4. Finally, upload changed configuration.

`$ xkbcomp output.xkb $DISPLAY`

[More details on this approach](https://wiki.archlinux.org/title/X_keyboard_extension)





