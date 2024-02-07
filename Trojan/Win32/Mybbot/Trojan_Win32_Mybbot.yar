
rule Trojan_Win32_Mybbot{
	meta:
		description = "Trojan:Win32/Mybbot,SIGNATURE_TYPE_PEHSTR,06 00 06 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {4a 61 76 61 20 55 70 64 61 74 65 2e 65 78 65 00 46 6f 72 6d 31 00 4d 59 42 42 6f 74 4e 65 74 } //02 00 
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 62 00 6f 00 6f 00 6c 00 74 00 7a 00 2e 00 63 00 6f 00 6d 00 } //01 00  http://booltz.com
		$a_01_2 = {61 74 74 65 6d 70 4d 65 73 73 61 67 65 73 00 } //01 00 
		$a_01_3 = {75 70 6c 6f 61 64 55 73 65 64 4c 6f 67 69 6e 00 } //01 00  灵潬摡獕摥潌楧n
		$a_01_4 = {48 74 74 70 57 65 62 52 65 73 70 6f 6e 73 65 } //00 00  HttpWebResponse
	condition:
		any of ($a_*)
 
}