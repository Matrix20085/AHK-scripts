#MaxThreadsPerHotkey 3

arr := ["w", "a", "s", "d"]
toggle := 0

^q::
    tooltip, It is rtunning`n`nUse "CTRL + w" to stop it
    toggle = 0
	Loop
	{
		If (toggle = 1)
		{
			toggle = 0
			break
		}
		random, ranKey, 1, 4
		sendinput % arr[ranKey]
		sleep 750
		sendinput % arr[ranKey]					

		
		random, ranSleep, 30000, 300000
		sleep % ranSleep
	}
return

^a::
    tooltip, It is rtunning`n`nUse "CTRL + w" to stop it
    toggle = 0
	Loop
	{
		If (toggle = 1)
		{
			toggle = 0
			break
		}
		sendinput e
		
		random, ranSleep, 6000, 8000
		sleep % ranSleep
	}
return

^w::
	toggle = 1
    tooltip
    sendinput w
    sendinput a
    sendinput s
    sendinput d
    sendinput w
    sendinput s
    send, {space}
    tooltip, ALL DONE GOOD BYE DAWG`n`n`nREMEMBER TO THANK YOUR BUS DRIVER
    sleep 1000
    tooltip
return