#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, RegEx


;BTW these key codes are unicode
;https://en.wikipedia.org/wiki/List_of_Unicode_characters
;You can add more key codes if you want
;If you dont know the key code you can use Get_key_code.lua
;Here we attach a key code to each key.
;this is like saying. when i ask for 0 give me back 48 etc. each key is seperated by commas.

        ;List of main keys
        ;Number keys
Main_Keys := {"0": "48", "1": "49", "2": "50", "3": "51", "4": "52", "5": "53", "6": "54","7": "55", "8": "56", "9": "57"
        ;First row of letters
        , "q": "81", "w": "87", "e": "69", "r": "82", "t": "84", "y": "89", "u": "85", "i": "73", "o": "79", "p": "80", "å": "221"
        ;2nd row of letters
        , "a": "65", "s": "83", "d": "68", "f": "70", "g": "71", "h": "72", "j": "74", "k": "75", "i": "76", "æ": "192", "ø": "222"
        ;3rd row of letters
        , "z": "90", "x": "88", "c": "67", "v": "86", "b": "66", "n": "78", "m": "77"}

        ;list of Numpad keys
Numpad := {"numlock": "144", "/": "111", "*": "106", "-": "109"
            , "7": "36", "8": "38", "9": "33", "+": "107"
            , "4": "37", "5": "12", "6": "39"
            , "1": "35", "2": "40", "3": "34"
            ;0 on the number pad does not have the same key code as normal 0
            , "0": "45", "del": "46"}

;F24 hotkey
f24::

    ;Read the file key.txt and outputs the result in a variable named Output
    FileRead, Output, key.txt

    ;Here we ask if Output is equal to 1. 1 then gets mapped to main key 49 see the list Main_keys above
    ;So what we are actually asking is if Output equals 49
    if (Output == Main_Keys["1"]) 
        ;Windows applications can be run without full path, but most other programs need a full path
        Run, Notepad

    else if (output == Main_Keys["q"])
        ;Windows shortcut to close current application
        Send {AltDown}{F4}{AltUp}

    ;Avoid pressing numlock as it will change the key codes for the varius numpad keys
    ;In this example i have turned each key on the numpad in to an emoji
    ;Here we ask if Output is equal to /. / then gets mapped to main key 111 see the list Numpad above
    ;So what we are actually asking is if Output equals 111 if it is send the emoji. 
    else if (Output == Numpad["/"])
        Send, 😁
    else if (Output == Numpad["*"])
        Send, 😎
    else if (Output == Numpad["-"])
        Send, 😍
    else if (Output == Numpad["7"])
        Send, 🤣
    else if (Output == Numpad["8"])
        Send, 😂
    else if (Output == Numpad["9"])
        Send, 😭
    else if (Output == Numpad["4"])
        Send, 🤑
    else if (Output == Numpad["5"])
        Send, 🤯
    else if (Output == Numpad["6"])
        Send, 😴
    else if (Output == Numpad["1"])
        Send, 😛
    else if (Output == Numpad["2"])
        Send, 😀
    else if (Output == Numpad["3"])
        Send, 🤬
    else if (Output == Numpad["0"])
        Send, 💩
    else if (Output == Numpad["del"])
        Send, 🤐
    else if (Output == Numpad["+"])
        Send, 🤮
    
    

;Return needs to be at the end of every hotkey
Return