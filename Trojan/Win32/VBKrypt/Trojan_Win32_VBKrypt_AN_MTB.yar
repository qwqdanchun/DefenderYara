
rule Trojan_Win32_VBKrypt_AN_MTB{
	meta:
		description = "Trojan:Win32/VBKrypt.AN!MTB,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {4e 53 4b 45 46 4f 52 45 53 54 49 4c 4c 49 4e 47 45 52 4e 45 53 } //01 00  NSKEFORESTILLINGERNES
		$a_01_1 = {4e 45 55 52 49 4c 45 4d 41 } //01 00  NEURILEMA
		$a_01_2 = {52 45 53 4f 4c 56 45 44 4e 45 53 53 } //01 00  RESOLVEDNESS
		$a_01_3 = {68 00 65 00 61 00 72 00 74 00 62 00 6c 00 6f 00 63 00 6b 00 } //01 00  heartblock
		$a_01_4 = {44 00 69 00 73 00 6b 00 62 00 65 00 73 00 6b 00 72 00 69 00 76 00 65 00 6c 00 73 00 65 00 72 00 6e 00 65 00 73 00 } //01 00  Diskbeskrivelsernes
		$a_01_5 = {53 63 72 6f 70 68 75 6c 61 72 69 61 63 65 6f 75 73 34 } //00 00  Scrophulariaceous4
	condition:
		any of ($a_*)
 
}