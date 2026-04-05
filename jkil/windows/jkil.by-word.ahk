#Requires AutoHotkey v2.0
SetWorkingDir A_ScriptDir
SendMode "Input"

; Physical Right Alt is expected to be remapped to AppsKey via Scancode Map.
AppsKey & SC024::SendLayerKey("Left")
AppsKey & SC025::SendLayerKey("Down")
AppsKey & SC026::SendLayerKey("Right")
AppsKey & SC017::SendLayerKey("Up")
AppsKey & SC032::SendLayerKey("Backspace")
AppsKey & SC031::SendLayerKey("Delete")
AppsKey & SC016::SendLayerKey("Home")
AppsKey & SC018::SendLayerKey("End")
AppsKey & SC015::SendLayerKey("PgUp")
AppsKey & SC023::SendLayerKey("PgDn")
AppsKey & SC027::SendLayerKey("Enter")
AppsKey::Return

SendLayerKey(keyName) {
  mods := ""

  if GetKeyState("LShift", "P")
    mods .= "+"
  if GetKeyState("LCtrl", "P")
    mods .= "^"
  if GetKeyState("LAlt", "P")
    mods .= "!"
  if GetKeyState("LWin", "P")
    mods .= "#"

  Send mods . "{" . keyName . "}"
}
