#MaxThreadsPerHotkey 3

SetTitleMatchMode, 2


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

        random ranDelay, 147,293
        SetKeyDelay, 0,ranDelay

		ControlSend, , v, EVE - ***Character Name Here***
		
		random, ranSleep, 1839, 4247
		sleep % ranSleep
	}
return

^w::
	toggle = 1
    tooltip
    tooltip, ALL DONE GOOD BYE DAWG
    sleep 3000
    tooltip
return
