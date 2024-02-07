
rule TrojanSpy_Win32_Rebhip_C_A{
	meta:
		description = "TrojanSpy:Win32/Rebhip.C!A,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 08 00 00 07 00 "
		
	strings :
		$a_01_0 = {23 23 23 23 40 23 23 23 23 20 23 23 23 23 40 23 23 23 23 } //01 00  ####@#### ####@####
		$a_01_1 = {55 6e 69 74 44 69 76 65 72 73 6f 73 00 } //01 00 
		$a_01_2 = {55 6e 69 74 43 6f 6d 61 6e 64 6f 73 00 } //01 00 
		$a_01_3 = {52 55 6e 69 74 56 61 72 69 61 76 65 69 73 00 } //01 00 
		$a_01_4 = {55 6e 69 74 53 61 6e 64 42 6f 78 00 } //01 00  湕瑩慓摮潂x
		$a_01_5 = {55 6e 69 74 49 6e 6a 65 63 74 4c 69 62 72 61 72 79 00 } //01 00  湕瑩湉敪瑣楌牢牡y
		$a_01_6 = {5f 50 45 52 53 49 53 54 00 } //01 00 
		$a_01_7 = {5f 53 41 49 52 00 } //00 00  卟䥁R
		$a_00_8 = {5d 04 00 00 45 2c 03 } //80 5c 
	condition:
		any of ($a_*)
 
}