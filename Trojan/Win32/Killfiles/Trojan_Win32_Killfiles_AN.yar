
rule Trojan_Win32_Killfiles_AN{
	meta:
		description = "Trojan:Win32/Killfiles.AN,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {50 72 6f 63 65 73 73 33 32 46 69 72 73 74 90 05 04 01 00 6b 65 72 6e 65 6c 33 32 90 05 04 01 00 43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 90 05 04 01 00 69 6e 20 66 69 6c 74 65 72 90 05 04 01 00 6f 70 65 6e 90 00 } //01 00 
		$a_01_1 = {6a 00 6a 00 68 00 90 00 00 53 ff 15 } //01 00 
		$a_01_2 = {6a 00 6a 00 68 00 b0 00 00 53 ff 15 } //00 00 
	condition:
		any of ($a_*)
 
}