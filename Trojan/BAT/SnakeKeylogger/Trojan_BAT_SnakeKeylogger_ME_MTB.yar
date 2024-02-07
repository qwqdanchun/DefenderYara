
rule Trojan_BAT_SnakeKeylogger_ME_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.ME!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {59 46 47 47 43 56 79 75 66 67 74 77 66 79 75 54 47 46 57 54 56 46 41 55 59 56 46 2e 65 78 65 } //01 00  YFGGCVyufgtwfyuTGFWTVFAUYVF.exe
		$a_01_1 = {57 00 69 00 6e 00 33 00 32 00 5f 00 4f 00 70 00 65 00 72 00 61 00 74 00 69 00 6e 00 67 00 53 00 79 00 73 00 74 00 65 00 6d 00 } //01 00  Win32_OperatingSystem
		$a_01_2 = {24 00 25 00 54 00 65 00 6c 00 65 00 67 00 72 00 61 00 6d 00 44 00 76 00 24 00 } //01 00  $%TelegramDv$
		$a_01_3 = {42 00 73 00 72 00 4f 00 6b 00 79 00 69 00 43 00 68 00 76 00 70 00 66 00 68 00 41 00 6b 00 69 00 70 00 5a 00 41 00 78 00 6e 00 6e 00 43 00 68 00 6b 00 4d 00 } //01 00  BsrOkyiChvpfhAkipZAxnnChkM
		$a_01_4 = {4c 00 4f 00 43 00 4b 00 44 00 4f 00 57 00 4e 00 32 00 30 00 30 00 30 00 } //01 00  LOCKDOWN2000
		$a_01_5 = {2f 00 43 00 20 00 63 00 68 00 6f 00 69 00 63 00 65 00 20 00 2f 00 43 00 20 00 59 00 20 00 2f 00 4e 00 20 00 2f 00 44 00 20 00 59 00 20 00 2f 00 54 00 20 00 33 00 20 00 26 00 20 00 44 00 65 00 6c 00 } //01 00  /C choice /C Y /N /D Y /T 3 & Del
		$a_01_6 = {73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 63 00 75 00 72 00 72 00 65 00 6e 00 74 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 72 00 75 00 6e 00 } //01 00  software\microsoft\windows\currentversion\run
		$a_01_7 = {20 00 7c 00 20 00 53 00 6e 00 61 00 6b 00 65 00 20 00 54 00 72 00 61 00 63 00 6b 00 65 00 72 00 } //01 00   | Snake Tracker
		$a_01_8 = {2f 00 73 00 65 00 6e 00 64 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 3f 00 63 00 68 00 61 00 74 00 5f 00 69 00 64 00 3d 00 } //01 00  /sendDocument?chat_id=
		$a_01_9 = {5c 00 53 00 6e 00 61 00 6b 00 65 00 4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 } //01 00  \SnakeKeylogger
		$a_01_10 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 43 00 6c 00 61 00 73 00 73 00 65 00 73 00 5c 00 46 00 6f 00 78 00 6d 00 61 00 69 00 6c 00 2e 00 75 00 72 00 6c 00 2e 00 6d 00 61 00 69 00 6c 00 74 00 6f 00 5c 00 53 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 } //00 00  SOFTWARE\Classes\Foxmail.url.mailto\Shell\open\command
	condition:
		any of ($a_*)
 
}