
rule TrojanDownloader_Win32_Herryday_A{
	meta:
		description = "TrojanDownloader:Win32/Herryday.A,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 04 00 00 05 00 "
		
	strings :
		$a_02_0 = {70 6f 73 74 2e 61 73 70 3f 69 3d 90 02 06 26 4d 61 63 3d 90 00 } //05 00 
		$a_00_1 = {63 3a 5c 77 69 6e 64 6f 77 73 5c 61 2e 74 78 74 } //01 00 
		$a_00_2 = {48 00 41 00 52 00 52 00 59 00 42 00 49 00 52 00 54 00 48 00 44 00 41 00 59 00 } //01 00 
		$a_00_3 = {43 42 54 5f 53 74 72 75 63 74 5f 66 6f 72 5f 51 51 } //00 00 
	condition:
		any of ($a_*)
 
}