
rule Trojan_Win32_Bervod_C{
	meta:
		description = "Trojan:Win32/Bervod.C,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 41 54 4c 63 6f 6d 2e 70 64 62 00 } //01 00 
		$a_01_1 = {49 62 68 6f 52 61 79 32 30 30 39 } //01 00  IbhoRay2009
		$a_00_2 = {25 73 5c 73 79 73 74 65 6d 5c 6d 73 74 73 63 2e 65 78 65 00 } //01 00 
		$a_01_3 = {63 6f 75 6e 74 3d 25 73 26 64 61 74 61 3d 25 73 26 63 6f 70 79 3d 25 73 26 69 6e 66 6f 3d 25 73 } //01 00  count=%s&data=%s&copy=%s&info=%s
		$a_00_4 = {55 00 73 00 65 00 72 00 2d 00 41 00 67 00 65 00 6e 00 74 00 3a 00 20 00 28 00 43 00 75 00 73 00 74 00 6f 00 6d 00 53 00 70 00 79 00 29 00 } //03 00  User-Agent: (CustomSpy)
		$a_03_5 = {6a 65 51 ff 15 90 01 0a 8b 52 50 90 01 09 ff d2 90 01 1b 8b 10 8b 52 44 83 c4 0c 6a 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}