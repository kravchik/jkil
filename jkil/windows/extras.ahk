#Requires AutoHotkey v2.0

; Use CapsLock to switch the input language/layout.
SetCapsLockState "AlwaysOff"
CapsLock::Send "#{Space}"

; Suppress the menu/start behavior of a stand-alone Alt/Win press while keeping
; the keys usable as modifiers in combinations.
A_MenuMaskKey := "vkE8"

; Left Alt: do nothing when tapped alone, but keep Alt combinations working.
*LAlt::
{
  KeyWait "LAlt"
}

*LAlt Up::
{
  if (A_PriorKey = "LAlt")
    return
  Send "{LAlt Up}"
}

; Left Win: do nothing when tapped alone, but keep Win combinations working.
*LWin::
{
  KeyWait "LWin"
}

*LWin Up::
{
  if (A_PriorKey = "LWin")
    return
  Send "{LWin Up}"
}

; Right Win: same behavior as Left Win.
*RWin::
{
  KeyWait "RWin"
}

*RWin Up::
{
  if (A_PriorKey = "RWin")
    return
  Send "{RWin Up}"
}
