
rule Trojan_Win32_Nemesis_RC_MTB{
	meta:
		description = "Trojan:Win32/Nemesis.RC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {45 6e 63 75 72 74 61 69 6e 20 6c 65 76 6e 65 64 73 6d 69 64 64 65 6c 6c 6f 76 65 6e 65 20 43 6c 65 6d 6d 65 6e 73 65 6e } //01 00  Encurtain levnedsmiddellovene Clemmensen
		$a_01_1 = {41 64 67 61 6e 67 73 72 65 74 74 69 67 68 65 64 65 72 6e 65 } //01 00  Adgangsrettighederne
		$a_01_2 = {53 61 63 68 73 65 6e 2d 41 6e 68 61 6c 74 } //01 00  Sachsen-Anhalt
		$a_01_3 = {53 00 79 00 73 00 74 00 65 00 6d 00 73 00 74 00 61 00 72 00 74 00 20 00 41 00 74 00 6f 00 6d 00 73 00 70 00 61 00 6c 00 74 00 6e 00 69 00 6e 00 67 00 65 00 6e 00 20 00 4b 00 61 00 62 00 69 00 6e 00 65 00 70 00 65 00 72 00 73 00 6f 00 6e 00 61 00 6c 00 65 00 72 00 } //01 00  Systemstart Atomspaltningen Kabinepersonaler
		$a_01_4 = {53 00 61 00 6c 00 74 00 73 00 79 00 72 00 65 00 73 00 20 00 66 00 61 00 6c 00 73 00 74 00 72 00 69 00 6e 00 67 00 65 00 72 00 } //00 00  Saltsyres falstringer
	condition:
		any of ($a_*)
 
}