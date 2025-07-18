# Background Media Control for Browsers

[![AutoHotkey](https://img.shields.io/badge/AutoHotkey-v1.1+-green.svg)](https://www.autohotkey.com/)
![Platform](https://img.shields.io/badge/Platform-Windows-blue)

Автоматически отправляет команду Play/Pause в фоновом режиме для популярных браузеров, даже когда они свёрнуты.

## Поддерживаемые браузеры
- Google Chrome
- Microsoft Edge
- Mozilla Firefox
- Opera

## Как использовать
1. Установите [AutoHotkey](https://www.autohotkey.com/download/) если ещё не установлен
2. Скачайте скрипт для вашего браузера из раздела [Releases](https://github.com/wulkan-Git/Background-Play-Pause/releases)
3. Запустите скрипт двойным кликом
4. Скрипт автоматически:
   - Найдёт окно вашего браузера
   - Отправит команду Play/Pause (пробел)
   - Закроется после выполнения

## Особенности
- Работает со свёрнутыми окнами
- Автоматически определяет состояние браузера
- Не требует ручного ввода команд
- Сохраняет исходное состояние окна
- Поддержка системных уведомлений

## Технические детали
Скрипт использует:
- `ControlSend` для фоновой отправки команд
- `WinGet` для определения состояния окна
- `WinActivate`/`WinMinimize` для временной активации
- Системные tray-уведомления

## Для разработчиков
Чтобы изменить скрипт:
1. Установите AutoHotkey
2. Откройте .ahk файл в любом текстовом редакторе
3. Основные параметры для настройки:
```autohotkey
TrayTip, Заголовок, Текст, 1  ; Изменить уведомление
Sleep, 300                    ; Изменить задержку реакции

## FAQ
**Q: Скрипт не работает с моим браузером**  
A: Убедитесь что:
   - Браузер запущен
   - Вкладка с медиаконтентом активна
   - Скрипт соответствует вашему браузеру

**Q: Можно ли использовать для других команд?**  
A: Да! Замените `{Space}` на:
   - `^{Left}` - предыдущий трек
   - `^{Right}` - следующий трек
   - `{Volume_Up}` - громкость+
[![Build Status](https://github.com/wulkan-Git/Background-Play-Pause/actions/workflows/build.yml/badge.svg)](https://github.com/wulkan-Git/Background-Play-Pause/actions)
