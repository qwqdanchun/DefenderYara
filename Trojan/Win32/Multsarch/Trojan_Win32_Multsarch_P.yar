
rule Trojan_Win32_Multsarch_P{
	meta:
		description = "Trojan:Win32/Multsarch.P,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 6d 73 39 31 31 2e 72 75 2f 74 61 72 69 66 73 2e 70 68 70 22 20 74 61 72 67 } //01 00 
		$a_01_1 = {69 6e 70 75 74 20 69 64 3d 22 73 6d 73 63 6f 64 65 5f 70 73 65 76 64 6f } //00 00 
	condition:
		any of ($a_*)
 
}