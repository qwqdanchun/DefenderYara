
rule Worm_Win32_Colowned_A{
	meta:
		description = "Worm:Win32/Colowned.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 14 00 00 "
		
	strings :
		$a_00_0 = {61 64 64 74 6f 73 74 61 72 74 75 70 25 25 6f 3c 6d 61 69 6e 2e 6d 61 69 6e 3e } //1 addtostartup%%o<main.main>
		$a_00_1 = {64 6f 75 70 64 61 74 65 25 62 25 6f 3c 6d 61 69 6e 2e 6d 61 69 6e 3e } //1 doupdate%b%o<main.main>
		$a_00_2 = {69 6e 73 74 61 6c 6c 25 25 6f 3c 6d 61 69 6e 2e 6d 61 69 6e 3e } //1 install%%o<main.main>
		$a_00_3 = {63 68 65 63 6b 69 66 6e 65 77 25 25 6f 3c 6d 61 69 6e 2e 6d 61 69 6e 3e } //1 checkifnew%%o<main.main>
		$a_00_4 = {73 65 6e 64 25 25 6f 3c 69 72 63 78 3e } //1 send%%o<ircx>
		$a_00_5 = {70 61 72 73 65 64 61 74 61 25 25 6f 3c 69 72 63 78 3e } //1 parsedata%%o<ircx>
		$a_00_6 = {70 72 69 76 6d 73 67 25 25 6f 3c 69 72 63 78 3e } //1 privmsg%%o<ircx>
		$a_00_7 = {69 6e 66 65 63 74 25 25 6f 3c 75 73 62 3e } //1 infect%%o<usb>
		$a_00_8 = {74 72 79 63 6f 70 79 25 62 25 6f 3c 75 73 62 3e } //1 trycopy%b%o<usb>
		$a_00_9 = {67 6f 56 69 73 69 74 25 25 6f 3c 67 65 74 63 6d 64 3e } //1 goVisit%%o<getcmd>
		$a_00_10 = {69 6e 69 74 70 61 79 6c 6f 61 64 25 25 6f 3c 73 70 6c 3e } //1 initpayload%%o<spl>
		$a_00_11 = {73 63 61 6e 6c 6f 63 61 6c 20 34 34 35 20 34 30 } //1 scanlocal 445 40
		$a_00_12 = {73 63 61 6e 6d 79 72 61 6e 67 65 20 34 34 35 20 34 30 } //1 scanmyrange 445 40
		$a_00_13 = {25 74 6d 70 25 26 63 64 20 66 72 61 6d 65 77 6f 72 6b 26 77 69 6e 73 68 65 6c 6c 2e 62 61 74 } //1 %tmp%&cd framework&winshell.bat
		$a_00_14 = {25 61 70 70 64 61 74 61 25 26 63 64 20 66 72 61 6d 65 77 6f 72 6b 33 26 77 69 6e 73 68 65 6c 6c 2e 62 61 74 } //1 %appdata%&cd framework3&winshell.bat
		$a_00_15 = {69 26 65 63 68 6f 20 67 65 74 20 73 79 73 75 70 2e 65 78 65 3e 3e 69 26 65 63 68 6f 20 62 79 65 3e 3e 69 26 66 74 70 20 2d 73 3a 69 26 73 74 61 72 74 } //2 i&echo get sysup.exe>>i&echo bye>>i&ftp -s:i&start
		$a_00_16 = {6d 6d 75 74 65 78 25 6f 3c 4d 75 74 65 78 3e 25 } //1 mmutex%o<Mutex>%
		$a_00_17 = {75 70 67 72 61 64 65 5f 61 63 74 69 6f 6e 25 25 6f 3c 6d 61 69 6e 2e 6d 61 69 6e 3e } //1 upgrade_action%%o<main.main>
		$a_00_18 = {64 72 69 76 65 74 79 70 65 25 73 25 6f 3c 75 73 62 3e 73 } //1 drivetype%s%o<usb>s
		$a_01_19 = {75 70 64 61 74 65 66 75 63 6b 65 72 75 70 64 61 74 65 00 } //2
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1+(#a_00_13  & 1)*1+(#a_00_14  & 1)*1+(#a_00_15  & 1)*2+(#a_00_16  & 1)*1+(#a_00_17  & 1)*1+(#a_00_18  & 1)*1+(#a_01_19  & 1)*2) >=10
 
}