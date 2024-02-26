
rule Trojan_Win32_BunnyLoader_RPX_MTB{
	meta:
		description = "Trojan:Win32/BunnyLoader.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {42 75 6e 6e 79 4c 6f 61 64 65 72 5f } //01 00  BunnyLoader_
		$a_01_1 = {42 6f 74 49 44 3d } //01 00  BotID=
		$a_01_2 = {42 75 6e 6e 79 2f 54 61 73 6b 48 61 6e 64 6c 65 72 2e 70 68 70 } //01 00  Bunny/TaskHandler.php
		$a_01_3 = {52 75 6e 20 53 74 65 61 6c 65 72 } //01 00  Run Stealer
		$a_01_4 = {45 63 68 6f 65 72 2e 70 68 70 } //01 00  Echoer.php
		$a_01_5 = {6e 6f 74 65 70 61 64 2e 65 78 65 } //01 00  notepad.exe
		$a_01_6 = {4a 6f 68 6e 20 44 6f 65 } //00 00  John Doe
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_BunnyLoader_RPX_MTB_2{
	meta:
		description = "Trojan:Win32/BunnyLoader.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {6f 00 6c 00 6c 00 79 00 64 00 62 00 67 00 2e 00 65 00 78 00 65 00 } //01 00  ollydbg.exe
		$a_01_1 = {42 00 75 00 6e 00 6e 00 79 00 4c 00 6f 00 61 00 64 00 65 00 72 00 } //01 00  BunnyLoader
		$a_01_2 = {42 00 4c 00 32 00 2e 00 30 00 } //01 00  BL2.0
		$a_01_3 = {6d 00 61 00 6c 00 74 00 65 00 73 00 74 00 } //01 00  maltest
		$a_01_4 = {72 75 73 73 69 61 6e 70 61 6e 64 61 } //01 00  russianpanda
		$a_01_5 = {63 6f 64 33 6e 79 6d } //01 00  cod3nym
		$a_01_6 = {68 6f 6e 65 79 40 70 6f 74 2e 63 6f 6d 2e 70 73 74 } //01 00  honey@pot.com.pst
		$a_01_7 = {6e 6f 74 65 70 61 64 2e 65 78 65 } //00 00  notepad.exe
	condition:
		any of ($a_*)
 
}