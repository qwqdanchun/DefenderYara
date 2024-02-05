
rule Trojan_Win64_Bazzarldr_GT_MTB{
	meta:
		description = "Trojan:Win64/Bazzarldr.GT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 05 00 "
		
	strings :
		$a_02_0 = {10 00 00 31 d2 c7 44 90 02 02 00 00 00 00 c7 44 90 02 02 40 00 00 00 48 90 02 02 49 90 02 02 ff d3 44 8b 90 02 06 48 90 02 02 48 90 02 02 48 90 02 02 e8 90 02 04 8b 84 90 02 05 48 89 90 02 03 45 31 90 02 02 31 d2 41 b8 01 00 00 00 48 8b 90 02 03 89 44 90 02 02 48 8d 90 02 06 48 89 90 02 03 ff 15 90 02 04 85 c0 b8 00 00 00 00 90 00 } //01 00 
		$a_80_1 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 45 78 4e 75 6d 61 } //VirtualAllocExNuma  01 00 
		$a_80_2 = {43 72 79 70 74 45 6e 63 72 79 70 74 } //CryptEncrypt  01 00 
		$a_80_3 = {6d 65 6d 63 70 79 } //memcpy  00 00 
	condition:
		any of ($a_*)
 
}