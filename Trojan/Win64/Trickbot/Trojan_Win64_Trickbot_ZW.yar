
rule Trojan_Win64_Trickbot_ZW{
	meta:
		description = "Trojan:Win64/Trickbot.ZW,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {52 65 67 47 65 74 56 61 6c 75 65 57 } //01 00  RegGetValueW
		$a_01_1 = {3c 00 67 00 65 00 6e 00 65 00 72 00 61 00 6c 00 3e 00 } //01 00  <general>
		$a_01_2 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 4f 00 70 00 65 00 72 00 61 00 74 00 69 00 6e 00 67 00 53 00 79 00 73 00 74 00 65 00 6d 00 } //01 00  SELECT * FROM Win32_OperatingSystem
		$a_01_3 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 6f 00 72 00 } //01 00  SELECT * FROM Win32_Processor
		$a_01_4 = {3c 00 63 00 70 00 75 00 3e 00 25 00 73 00 3c 00 2f 00 63 00 70 00 75 00 3e 00 } //01 00  <cpu>%s</cpu>
		$a_01_5 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 43 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 53 00 79 00 73 00 74 00 65 00 6d 00 } //01 00  SELECT * FROM Win32_ComputerSystem
		$a_01_6 = {3c 00 72 00 61 00 6d 00 3e 00 25 00 73 00 3c 00 2f 00 72 00 61 00 6d 00 3e 00 } //01 00  <ram>%s</ram>
		$a_01_7 = {3c 00 75 00 73 00 65 00 72 00 3e 00 25 00 73 00 3c 00 2f 00 75 00 73 00 65 00 72 00 3e 00 } //01 00  <user>%s</user>
		$a_01_8 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 55 00 6e 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 } //01 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall
		$a_01_9 = {3c 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 3e 00 25 00 73 00 3c 00 2f 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 3e 00 } //01 00  <program>%s</program>
		$a_01_10 = {3c 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 3e 00 25 00 73 00 3c 00 2f 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 3e 00 } //00 00  <service>%s</service>
	condition:
		any of ($a_*)
 
}