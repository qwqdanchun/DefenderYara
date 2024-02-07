
rule Trojan_Win32_QQPass_GE_bit{
	meta:
		description = "Trojan:Win32/QQPass.GE!bit,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {42 6c 61 63 6b 4d 6f 6f 6e 20 52 75 6e 54 69 6d 65 20 45 72 72 6f 72 3a } //0a 00  BlackMoon RunTime Error:
		$a_03_1 = {3f 41 63 74 69 6f 6e 3d 90 02 08 26 55 73 65 72 3d 90 00 } //03 00 
		$a_01_2 = {53 65 74 50 72 6f 78 79 00 53 65 74 50 72 6f 78 79 43 72 65 64 65 6e 74 69 61 6c 73 00 4f 70 65 6e 00 4f 70 74 69 6f 6e } //03 00  敓側潲祸匀瑥牐硯䍹敲敤瑮慩獬伀数n灏楴湯
		$a_01_3 = {54 41 53 4c 6f 67 69 6e 2e 65 78 65 00 63 6c 69 65 6e 74 2e 65 78 65 00 75 69 5c 44 4e 46 43 6c 69 65 6e 74 } //01 00 
		$a_01_4 = {cc da d1 b6 d3 ce cf b7 c6 bd cc a8 } //01 00 
		$a_01_5 = {44 4e 46 2e 65 78 65 00 } //01 00  乄⹆硥e
		$a_01_6 = {42 61 6e 6b 20 6f 66 20 41 6d 65 72 69 63 61 20 6c 6f 67 2d 69 6e } //01 00  Bank of America log-in
		$a_01_7 = {46 53 41 56 2e 65 78 65 } //00 00  FSAV.exe
		$a_00_8 = {5d 04 00 00 39 75 03 80 5c 22 00 00 3c 75 03 80 00 00 01 00 06 00 0c } //00 87 
	condition:
		any of ($a_*)
 
}