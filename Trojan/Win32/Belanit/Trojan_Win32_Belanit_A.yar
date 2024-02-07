
rule Trojan_Win32_Belanit_A{
	meta:
		description = "Trojan:Win32/Belanit.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {4d 6f 7a 69 6c 6c 61 2f 35 2e 30 20 28 63 6f 6d 70 61 74 69 62 6c 65 70 3b 20 4d 53 49 45 20 } //01 00  Mozilla/5.0 (compatiblep; MSIE 
		$a_00_1 = {5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 00 } //01 00  坜湩潤獷䍜牵敲瑮敖獲潩屮畒n
		$a_01_2 = {73 65 74 2d 63 6f 6f 6b 69 65 3a 00 } //01 00 
		$a_01_3 = {26 00 73 00 74 00 61 00 72 00 74 00 3d 00 } //01 00  &start=
		$a_01_4 = {6f 00 6e 00 6d 00 6f 00 75 00 73 00 65 00 64 00 6f 00 77 00 6e 00 } //01 00  onmousedown
		$a_02_5 = {8b f0 85 f6 0f 84 90 90 00 00 00 6a 00 68 00 00 00 80 6a 00 6a 00 8b c7 e8 90 01 03 ff 50 56 e8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}