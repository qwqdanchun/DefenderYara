
rule Trojan_Win32_VB_QL{
	meta:
		description = "Trojan:Win32/VB.QL,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 46 00 69 00 6c 00 65 00 73 00 00 00 00 00 22 00 00 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 31 00 6f 00 72 00 65 00 72 00 00 00 } //01 00 
		$a_01_1 = {46 6f 72 6d 31 00 00 00 6d 4d 61 69 6e 00 00 00 6d 45 4e 00 6d 43 68 61 6e 67 65 49 45 00 } //00 00 
	condition:
		any of ($a_*)
 
}