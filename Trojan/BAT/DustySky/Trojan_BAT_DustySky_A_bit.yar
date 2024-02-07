
rule Trojan_BAT_DustySky_A_bit{
	meta:
		description = "Trojan:BAT/DustySky.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 49 00 4d 00 20 00 54 00 61 00 73 00 6b 00 6d 00 67 00 72 00 2e 00 65 00 78 00 65 00 20 00 2d 00 66 00 } //01 00  taskkill /IM Taskmgr.exe -f
		$a_01_1 = {2d 00 66 00 20 00 26 00 20 00 53 00 43 00 20 00 53 00 54 00 4f 00 50 00 } //01 00  -f & SC STOP
		$a_01_2 = {6d 00 61 00 6c 00 69 00 63 00 69 00 6f 00 75 00 73 00 20 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 20 00 6f 00 6e 00 20 00 79 00 6f 00 75 00 72 00 20 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 } //01 00  malicious software on your computer
		$a_01_3 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 43 00 61 00 70 00 74 00 69 00 6f 00 6e 00 20 00 46 00 52 00 4f 00 4d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 4f 00 70 00 65 00 72 00 61 00 74 00 69 00 6e 00 67 00 53 00 79 00 73 00 74 00 65 00 6d 00 } //00 00  SELECT Caption FROM Win32_OperatingSystem
	condition:
		any of ($a_*)
 
}