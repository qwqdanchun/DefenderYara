
rule Trojan_Win32_VB_ADR{
	meta:
		description = "Trojan:Win32/VB.ADR,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_02_0 = {50 6a 01 6a ff 6a 02 ff 15 90 01 04 8d 4d 90 01 01 ff 15 90 01 04 c7 45 fc 90 01 01 00 00 00 c7 85 90 01 01 fe ff ff 90 01 04 c7 85 90 01 01 fe ff ff 08 00 00 00 c7 85 90 01 01 fe ff ff 90 01 04 c7 85 90 01 01 fe ff ff 08 00 00 00 8d 8d 90 01 01 fe ff ff 51 8b 55 08 83 c2 34 52 90 00 } //01 00 
		$a_00_1 = {63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 } //01 00 
		$a_00_2 = {43 00 72 00 65 00 61 00 74 00 65 00 4f 00 62 00 6a 00 65 00 63 00 74 00 28 00 22 00 57 00 53 00 63 00 72 00 69 00 70 00 74 00 2e 00 53 00 68 00 65 00 6c 00 6c 00 22 00 29 00 2e 00 52 00 75 00 6e 00 20 00 22 00 63 00 6d 00 64 00 20 00 2f 00 63 00 } //01 00 
		$a_00_3 = {67 00 2e 00 63 00 6e 00 2f 00 67 00 2e 00 65 00 78 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}