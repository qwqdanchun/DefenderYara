
rule Trojan_Win64_IcedID_MAA_MTB{
	meta:
		description = "Trojan:Win64/IcedID.MAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {52 62 37 66 76 2e 64 6c 6c } //01 00  Rb7fv.dll
		$a_01_1 = {4a 68 73 61 64 6a 71 6b } //01 00  Jhsadjqk
		$a_01_2 = {42 41 6e 53 54 78 4a 77 } //01 00  BAnSTxJw
		$a_01_3 = {44 7a 30 53 37 4b 70 37 72 } //01 00  Dz0S7Kp7r
		$a_01_4 = {4f 58 69 72 36 30 57 42 30 41 4e } //01 00  OXir60WB0AN
		$a_01_5 = {7a 73 48 74 41 4e 37 6c 6c } //00 00  zsHtAN7ll
	condition:
		any of ($a_*)
 
}