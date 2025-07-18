#NoEnv
SendMode Input
SetTitleMatchMode, 2
#Persistent  ; Скрипт остается активным в фоне

; Автоматическое выполнение при запуске скрипта
AutoExecute:
    ; Проверяем, запущен ли браузер
    IfWinExist, ahk_exe firefox.exe  ; Замените на свой браузер
    {
        ; 1. Попытка отправить команду без активации окна
        ControlSend, ahk_parent, {Space}, ahk_exe firefox.exe
        
        ; 2. Ждем реакции плеера
        Sleep, 300
        
        ; 3. Если окно свернуто - дополнительная попытка
        WinGet, winState, MinMax, ahk_exe firefox.exe
        if (winState = -1)  ; -1 = свернуто
        {
            ; Активируем окно, отправляем команду и возвращаем состояние
            WinActivate, ahk_exe firefox.exe
            WinWaitActive, ahk_exe firefox.exe,, 1
            Send, {Space}
            WinMinimize, ahk_exe firefox.exe
        }
        
        ; Уведомление о выполнении
        TrayTip, Автозапуск, Команда отправлена в браузер, 1
    }
    else
    {
        MsgBox, Браузер Firefox не найден! Запустите браузер и повторите попытку.
    }
    
    ; Завершаем работу скрипта после выполнения
    ExitApp
return