
rule Trojan_Win32_Ogpha_A{
	meta:
		description = "Trojan:Win32/Ogpha.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 72 64 2f 6d 79 64 64 2e 70 68 70 3f } //01 00  /rd/mydd.php?
		$a_01_1 = {6c 70 47 65 74 64 41 54 41 3d 25 73 00 } //01 00 
		$a_01_2 = {38 39 2e 31 34 39 2e 32 32 36 2e 35 34 00 } //01 00  㤸ㄮ㤴㈮㘲㔮4
		$a_01_3 = {63 66 32 34 61 31 37 61 61 34 66 38 33 66 36 30 61 64 66 63 30 61 63 39 35 64 39 34 33 32 64 36 00 } //02 00 
		$a_01_4 = {83 7d fc 14 7d 31 83 7d f8 0f 7d 2b } //00 00 
	condition:
		any of ($a_*)
 
}