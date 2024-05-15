
rule Trojan_Win32_RiseProStealer_RHE_MTB{
	meta:
		description = "Trojan:Win32/RiseProStealer.RHE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {ff 75 e0 e8 90 01 02 00 00 cc e8 90 01 02 00 00 e9 90 01 02 ff ff 90 00 } //02 00 
		$a_01_1 = {53 74 65 61 6c 65 72 43 6c 69 65 6e 74 2e 65 78 65 00 53 74 61 72 74 } //02 00 
		$a_03_2 = {52 69 73 65 50 72 6f 90 01 02 54 65 6c 65 67 72 61 6d 3a 20 68 74 74 70 73 3a 2f 2f 74 2e 6d 65 2f 52 69 73 65 50 72 6f 53 55 50 50 4f 52 54 90 00 } //02 00 
		$a_03_3 = {50 45 00 00 4c 01 05 90 01 11 0b 01 0e 22 00 90 01 01 10 90 01 0e 10 00 00 00 90 01 01 10 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}