
rule Trojan_Win32_Ghopog_A{
	meta:
		description = "Trojan:Win32/Ghopog.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {62 61 63 6b 64 6f 6f 72 2e 64 6c 6c } //01 00  backdoor.dll
		$a_01_1 = {5c 55 70 64 61 74 65 5c 76 65 72 2e 6c 69 73 74 } //01 00  \Update\ver.list
		$a_01_2 = {25 73 3f 54 47 3d 25 73 26 4d 61 63 3d 25 73 26 56 65 72 3d 25 73 26 4a 63 3d 25 64 26 59 70 3d 25 73 26 4b 45 59 3d 25 64 26 43 50 3d 25 73 } //01 00  %s?TG=%s&Mac=%s&Ver=%s&Jc=%d&Yp=%s&KEY=%d&CP=%s
		$a_03_3 = {65 57 56 6c 59 53 73 2b 50 90 02 64 35 53 66 6d 52 2f 5a 54 39 77 59 6d 45 52 90 00 } //01 00 
		$a_03_4 = {72 61 76 6d 6f 6e 64 2e 65 78 65 90 01 01 51 51 2e 65 78 65 90 01 02 70 66 77 2e 65 78 65 90 01 01 6c 73 61 73 73 2e 65 78 65 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}