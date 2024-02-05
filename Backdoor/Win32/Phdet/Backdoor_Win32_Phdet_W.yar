
rule Backdoor_Win32_Phdet_W{
	meta:
		description = "Backdoor:Win32/Phdet.W,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {c7 45 d0 68 61 6e 63 } //01 00 
		$a_03_1 = {c7 45 d4 65 64 20 43 e9 90 01 02 ff ff 90 00 } //0a 00 
		$a_01_2 = {c7 45 e0 70 68 69 63 c7 45 e4 20 50 72 6f c7 45 e8 76 69 64 65 c7 45 ec 72 20 76 31 e9 } //00 00 
		$a_00_3 = {5d 04 00 00 9b 24 03 80 5c 1f 00 } //00 9c 
	condition:
		any of ($a_*)
 
}