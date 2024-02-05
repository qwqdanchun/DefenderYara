
rule Trojan_Win32_EyeStye_U{
	meta:
		description = "Trojan:Win32/EyeStye.U,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_10_0 = {63 6c 65 61 6e 73 77 65 65 70 2e 65 78 65 } //01 00 
		$a_10_1 = {5f 5f 53 50 59 4e 45 54 } //01 00 
		$a_10_2 = {2d 25 42 4f 54 4e 41 4d 45 25 } //01 00 
		$a_12_3 = {6f 6f 6b 69 65 73 2d 90 02 08 74 6f 72 2e 78 6d 6c 90 00 00 } //00 80 
	condition:
		any of ($a_*)
 
}