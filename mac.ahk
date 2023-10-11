#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

F13 & b::Left
F13 & n::Down
F13 & p::Up
F13 & f::Right

F13 & d::Del
F13 & h::BS

F13 & e::End
F13 & a::Home
F13 & m::Enter

F13 & k::
    Send {ShiftDown}{END}{SHIFTUP}
    Sleep 50
    Send ^c
    Sleep 50
    Send {Del}
    Return

F13 & y::^v

F13 & c::^c

;F13&Spaceで全角半角を切り替え可能にするコード
;ローカルPCがUS配列でリモートPCがJIS配列だと、Send {vkF3sc029}では正常に処理されない。（`の入力指示となる）
;そこで、ローカルPCでF15(未割当のFunctionキー)をSendし、リモートPCでそのFunctionキー入力により切り替えをする設定を行う必要がある
F13 & Space::
    if (IME_GET()==0){
        IME_SET(1)
    } else {
        IME_SET(0)
    }
    Send {F15}




