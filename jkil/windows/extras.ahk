#Requires AutoHotkey v2.0

; Use CapsLock to switch the input language/layout.
SetCapsLockState "AlwaysOff"
CapsLock::Send "#{Space}"

; Suppress the menu/start behavior of a stand-alone Alt/Win press while keeping
; the keys usable as modifiers in combinations.
A_MenuMaskKey := "vkE8"

; Left Alt: proxy the key manually so combinations still work, but a stand-alone
; tap does not focus the application menu.
*LAlt::
{
  Send "{Blind}{LAlt DownR}"
}

*LAlt Up::
{
  if (A_PriorKey = "LAlt")
    Send "{Blind}{vkE8}{LAlt Up}"
  else
    Send "{Blind}{LAlt Up}"
}

; Left Win: same idea, but prevent the Start menu on a stand-alone tap.
*LWin::
{
  Send "{Blind}{LWin DownR}"
}

*LWin Up::
{
  if (A_PriorKey = "LWin")
    Send "{Blind}{vkE8}{LWin Up}"
  else
    Send "{Blind}{LWin Up}"
}

; Right Win: same behavior as Left Win.
*RWin::
{
  Send "{Blind}{RWin DownR}"
}

*RWin Up::
{
  if (A_PriorKey = "RWin")
    Send "{Blind}{vkE8}{RWin Up}"
  else
    Send "{Blind}{RWin Up}"
}
