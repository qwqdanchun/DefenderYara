
rule Trojan_Win32_Runwaprep_A{
	meta:
		description = "Trojan:Win32/Runwaprep.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {0d 00 50 00 57 00 4c 00 43 00 52 00 52 00 } //02 00 
		$a_01_1 = {4c 4d 02 57 50 4e 51 03 00 } //02 00 
		$a_01_2 = {07 51 04 4a 4d 51 56 7d 4b 46 1f 07 46 04 46 47 4e 43 5b 1f 07 46 00 } //01 00 
		$a_01_3 = {8a 14 06 80 f2 4d ff 45 d0 88 14 01 40 83 f8 1e 7c } //01 00 
		$a_01_4 = {8b ca 66 8b 14 10 66 83 f2 22 66 89 14 08 83 c0 02 43 83 f8 14 7c } //01 00 
		$a_01_5 = {8b ce 8a 14 06 80 f2 23 ff 45 d0 88 14 01 40 83 f8 14 7c } //00 00 
		$a_00_6 = {5d 04 00 00 } //b6 8d 
	condition:
		any of ($a_*)
 
}