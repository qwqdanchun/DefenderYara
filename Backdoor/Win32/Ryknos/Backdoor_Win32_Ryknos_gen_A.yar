
rule Backdoor_Win32_Ryknos_gen_A{
	meta:
		description = "Backdoor:Win32/Ryknos.gen!A,SIGNATURE_TYPE_PEHSTR,0a 00 08 00 0b 00 00 05 00 "
		
	strings :
		$a_01_0 = {8b 74 24 10 8b 5c 24 14 89 f1 83 c8 ff 40 80 3c 01 00 75 f9 89 c7 eb 09 0f be 04 3e 31 d8 88 04 3e } //01 00 
		$a_01_1 = {ff ff 68 04 37 00 00 e8 } //01 00 
		$a_01_2 = {09 c0 75 13 68 3a 03 00 00 e8 } //01 00 
		$a_01_3 = {0f b6 16 46 80 fa 61 72 08 80 fa 7a 77 03 80 ea 20 } //01 00 
		$a_01_4 = {ff ff 83 c4 24 31 db eb 12 6a 15 ff 34 } //01 00 
		$a_01_5 = {00 00 99 f7 fb 8b 3c } //01 00 
		$a_01_6 = {69 66 20 65 78 69 73 74 20 22 22 43 3a 5c 6d 79 61 70 70 2e 65 78 65 22 22 20 67 6f 74 6f } //01 00  if exist ""C:\myapp.exe"" goto
		$a_01_7 = {6e 65 74 73 68 20 66 69 72 65 77 61 6c 6c 20 73 65 74 } //01 00  netsh firewall set
		$a_01_8 = {64 65 6c 20 22 43 3a 5c 54 45 4d 50 5c } //01 00  del "C:\TEMP\
		$a_01_9 = {25 73 5c 65 64 25 73 2e 25 73 } //01 00  %s\ed%s.%s
		$a_01_10 = {50 52 49 56 4d 53 47 } //00 00  PRIVMSG
	condition:
		any of ($a_*)
 
}