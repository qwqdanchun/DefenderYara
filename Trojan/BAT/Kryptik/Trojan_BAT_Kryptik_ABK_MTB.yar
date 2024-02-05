
rule Trojan_BAT_Kryptik_ABK_MTB{
	meta:
		description = "Trojan:BAT/Kryptik.ABK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 05 00 00 0a 00 "
		
	strings :
		$a_03_0 = {09 11 09 07 11 09 18 5a 18 6f 90 02 04 1f 10 28 90 02 04 d2 9c 00 11 09 17 58 13 09 11 09 08 fe 04 13 0a 11 0a 2d d6 90 00 } //02 00 
		$a_80_1 = {4c 61 74 65 42 69 6e 64 69 6e 67 } //LateBinding  02 00 
		$a_80_2 = {47 65 74 4d 65 74 68 6f 64 } //GetMethod  02 00 
		$a_80_3 = {49 6e 76 6f 6b 65 } //Invoke  02 00 
		$a_80_4 = {47 65 74 41 73 73 65 6d 62 6c 69 65 73 } //GetAssemblies  00 00 
	condition:
		any of ($a_*)
 
}