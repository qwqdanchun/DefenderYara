
rule Trojan_Win32_Offloader_CB_MTB{
	meta:
		description = "Trojan:Win32/Offloader.CB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 63 00 61 00 6c 00 65 00 6e 00 64 00 61 00 72 00 6e 00 75 00 74 00 2e 00 78 00 79 00 7a 00 2f 00 77 00 77 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d 00 33 } //01 00 
		$a_01_1 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65 } //00 00 
	condition:
		any of ($a_*)
 
}