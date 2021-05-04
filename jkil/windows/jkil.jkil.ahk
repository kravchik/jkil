;Windows AutoHotkey remapping

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;+Shift #Win !Alt ^Ctrl
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;#MaxHotkeysPerInterval 10000

;https://autohotkey.com/board/topic/41010-change-language-hotkey/
;http://superuser.com/questions/309005/disable-the-activation-of-the-menu-bar-when-alt-is-pressed-in-windows-7

;use CapsLock to change a language (implemented by sending Alt+Shift)
;CapsLock::Send, {Alt Down}{Shift Down}{Shift Up}{Alt Up}

;Disable alt-menu (not always works)
;~LAlt Up:: return

;disable win-menu
;~LWin Up:: return
;~RWin Up:: return

;#e::Run, %A_MyDocuments%
;#r::Run, cmd

;
; JKIL part
;

; RAlt+j ==> Left
>!j::Send, {Left}

; RAlt+Shift+j ==> Shift+Left
>!+j::Send, +{Left}

; RAlt+Ctrl+j ==> Left (10 times)
>!^j::
  Send, {Left}
  Send, {Left}
  Send, {Left}
  Send, {Left}
  Send, {Left}
  Send, {Left}
  Send, {Left}
  Send, {Left}
  Send, {Left}
  Send, {Left}
Return

; RAlt+Shift+Ctrl+j ==> Shift+Left (10 times)
>!+^j::
  Send, +{Left}
  Send, +{Left}
  Send, +{Left}
  Send, +{Left}
  Send, +{Left}
  Send, +{Left}
  Send, +{Left}
  Send, +{Left}
  Send, +{Left}
  Send, +{Left}
Return

; RAlt+LAlt+j ==> Alt+Left
>!<!j::Send, !{Left}

; RAlt+Ctrl+LAlt+j ==> Ctrl+Alt+Left
>!^<!j::Send, ^!{Left}

; RAlt+k ==> Down
>!k::Send, {Down}

; RAlt+Shift+k ==> Shift+Down
>!+k::Send, +{Down}

; RAlt+Ctrl+k ==> Down (10 times)
>!^k::
  Send, {Down}
  Send, {Down}
  Send, {Down}
  Send, {Down}
  Send, {Down}
  Send, {Down}
  Send, {Down}
  Send, {Down}
  Send, {Down}
  Send, {Down}
Return

; RAlt+Shift+Ctrl+k ==> Shift+Down (10 times)
>!+^k::
  Send, +{Down}
  Send, +{Down}
  Send, +{Down}
  Send, +{Down}
  Send, +{Down}
  Send, +{Down}
  Send, +{Down}
  Send, +{Down}
  Send, +{Down}
  Send, +{Down}
Return

; RAlt+LAlt+k ==> Alt+Down
>!<!k::Send, !{Down}

; RAlt+Ctrl+LAlt+k ==> Ctrl+Alt+Down
>!^<!k::Send, ^!{Down}

; RAlt+l ==> Right
>!l::Send, {Right}

; RAlt+Shift+l ==> Shift+Right
>!+l::Send, +{Right}

; RAlt+Ctrl+l ==> Right (10 times)
>!^l::
  Send, {Right}
  Send, {Right}
  Send, {Right}
  Send, {Right}
  Send, {Right}
  Send, {Right}
  Send, {Right}
  Send, {Right}
  Send, {Right}
  Send, {Right}
Return

; RAlt+Shift+Ctrl+l ==> Shift+Right (10 times)
>!+^l::
  Send, +{Right}
  Send, +{Right}
  Send, +{Right}
  Send, +{Right}
  Send, +{Right}
  Send, +{Right}
  Send, +{Right}
  Send, +{Right}
  Send, +{Right}
  Send, +{Right}
Return

; RAlt+LAlt+l ==> Alt+Right
>!<!l::Send, !{Right}

; RAlt+Ctrl+LAlt+l ==> Ctrl+Alt+Right
>!^<!l::Send, ^!{Right}

; RAlt+i ==> Up
>!i::Send, {Up}

; RAlt+Shift+i ==> Shift+Up
>!+i::Send, +{Up}

; RAlt+Ctrl+i ==> Up (10 times)
>!^i::
  Send, {Up}
  Send, {Up}
  Send, {Up}
  Send, {Up}
  Send, {Up}
  Send, {Up}
  Send, {Up}
  Send, {Up}
  Send, {Up}
  Send, {Up}
Return

; RAlt+Shift+Ctrl+i ==> Shift+Up (10 times)
>!+^i::
  Send, +{Up}
  Send, +{Up}
  Send, +{Up}
  Send, +{Up}
  Send, +{Up}
  Send, +{Up}
  Send, +{Up}
  Send, +{Up}
  Send, +{Up}
  Send, +{Up}
Return

; RAlt+LAlt+i ==> Alt+Up
>!<!i::Send, !{Up}

; RAlt+Ctrl+LAlt+i ==> Ctrl+Alt+Up
>!^<!i::Send, ^!{Up}

; RAlt+m ==> Backspace
>!m::Send, {Backspace}

; RAlt+Ctrl+m ==> Ctrl+Backspace (10 times)
>!^m::
  Send, ^{Backspace}
  Send, ^{Backspace}
  Send, ^{Backspace}
  Send, ^{Backspace}
  Send, ^{Backspace}
  Send, ^{Backspace}
  Send, ^{Backspace}
  Send, ^{Backspace}
  Send, ^{Backspace}
  Send, ^{Backspace}
Return

; RAlt+n ==> Delete
>!n::Send, {Delete}

; RAlt+Ctrl+n ==> Ctrl+Delete (10 times)
>!^n::
  Send, ^{Delete}
  Send, ^{Delete}
  Send, ^{Delete}
  Send, ^{Delete}
  Send, ^{Delete}
  Send, ^{Delete}
  Send, ^{Delete}
  Send, ^{Delete}
  Send, ^{Delete}
  Send, ^{Delete}
Return

; RAlt+u ==> Home
>!u::Send, {Home}

; RAlt+Shift+u ==> Shift+Home
>!+u::Send, +{Home}

; RAlt+Ctrl+u ==> Ctrl+Home
>!^u::Send, ^{Home}

; RAlt+Ctrl+Shift+u ==> Ctrl+Shift+Home
>!^+u::Send, ^+{Home}

; RAlt+o ==> End
>!o::Send, {End}

; RAlt+Shift+o ==> Shift+End
>!+o::Send, +{End}

; RAlt+Ctrl+o ==> Ctrl+End
>!^o::Send, ^{End}

; RAlt+Ctrl+Shift+o ==> Ctrl+Shift+End
>!^+o::Send, ^+{End}

; RAlt+y ==> PgUp
>!y::Send, {PgUp}

; RAlt+Shift+y ==> Shift+PgUp
>!+y::Send, +{PgUp}

; RAlt+Ctrl+y ==> Ctrl+PgUp
>!^y::Send, ^{PgUp}

; RAlt+Ctrl+Shift+y ==> Ctrl+Shift+PgUp
>!^+y::Send, ^+{PgUp}

; RAlt+h ==> PgDn
>!h::Send, {PgDn}

; RAlt+Shift+h ==> Shift+PgDn
>!+h::Send, +{PgDn}

; RAlt+Ctrl+h ==> Ctrl+PgDn
>!^h::Send, ^{PgDn}

; RAlt+Ctrl+Shift+h ==> Ctrl+Shift+PgDn
>!^+h::Send, ^+{PgDn}

; RAlt+; ==> Enter
>!;::Send, {Enter}

; RAlt+Shift+; ==> Shift+Enter
>!+;::Send, +{Enter}

; RAlt+Ctrl+; ==> Ctrl+Enter
>!^;::Send, ^{Enter}

; RAlt+Ctrl+Shift+; ==> Ctrl+Shift+Enter
>!^+;::Send, ^+{Enter}




; Disable stand-alone Alt key press: make Alt purely a modifier key.
; The If statement is required to get Alt+Shift work as expected. If it's not
; there, only [Press Alt], [Press Shift], [Release Shift], [Release Alt] would
; trigger the input language change. The other, more common sequence would be
; [Press Alt], [Press Shift], [Release  Alt], [Release Shift], but AutoHotKey
; would block it before it reaches Windows if the "#If" isn't there.
;#If not GetKeyState("Tab", "P")
;~LAlt::
;    KeyWait, LAlt
;return
;
; Make Alt+Something still work:
;~LAlt Up::
;    Send, {LAlt Up}
;return

