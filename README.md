# BrynhildrHelpdesk
обновленный HELPDESK 
(Brynhildr + kitty + SSH + autoit)
https://sourceforge.net/projects/brynhildr-helpdesk/


https://a.fsdn.com/con/app/proj/brynhildr-helpdesk/screenshots/015.jpg/182/137/1

https://a.fsdn.com/con/app/proj/brynhildr-helpdesk/screenshots/015-2.jpg/182/137/1


работает через ssh tunnel
полностью portable
поддержка до 4 серверов (можно и больше конечно)
умеет работать как служба
id и пароль всегда новые, если не служба
поддержка proxy http
можно задать свои id и пароль через  helpdesk.exe 22334 1234,  где 22334 -это id и 1234 - это пароль.

видео https://youtu.be/csEDjlFt_To

0.21
добавте ваши данные в файл 

repeaterData.au3


0.15

для работы вам понадобится ssh server с белым Ip
настроить kitty.exe (kitty.exe portable)
заменить на свой файлы в 
\InstantSupport_Files\Sessions
и
\InstantSupport_Files\SshHostKeys
поменять имена файлов в helpdesk_0.15 - publik.au3 в строках 58,59,60
в файле InfoData.au3 указываются ваши данные , название фирмы. сайт .
в файле repeaterData.au3 впишите ваши ip ssh серверов, порт, имя сервера, и пароль из kitty
заменить логотип на свой \InstantSupport_Files\logo.jpg
ДЛЯ КОМПИЛЯЦИИ понадобится установленный AutoIt  https://www.autoitscript.com/site/autoit/

по работе в виде службы:
принцип работы такой:
человек запускает helpdesk_ls.exe говорит ID
если нужно то устанавливаем как служба: helpdesk > служба > установить службу
всё необходимое копируется в папку C:\helpdesk38
из неё в систему ставится 2 службы служба ssh kitty.exe( в службах будет как helpdesk38) и Brynhildr_Service.
после установки служб helpdesk.exe автоматом закрывается и запускает эти 2 службы.
и ПК должен быть опять доступен по тому же id и паролю
установка службы реализовано с помощью утилиты srvany 

для защиты ssh сервера можно использовать fail2ban и [url=https://unixforum.org/index.php?s=&showtopic=142362&view=findpost&p=1303865]вот такую хитрость[/url]

З.Ы. многое взято из chunkvnc, делалось для себя для оказания удалённой техподдержки. 
