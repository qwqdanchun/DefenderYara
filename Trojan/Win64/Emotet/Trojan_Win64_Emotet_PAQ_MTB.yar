
rule Trojan_Win64_Emotet_PAQ_MTB{
	meta:
		description = "Trojan:Win64/Emotet.PAQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {48 89 e8 48 d1 90 01 01 49 f7 e6 48 c1 ea 90 01 01 48 6b fa 90 01 01 48 89 d9 48 89 f2 90 00 } //01 00 
		$a_03_1 = {48 89 c1 e8 90 02 04 48 03 90 02 06 8a 44 3d 90 01 01 42 32 44 25 90 01 01 41 88 44 2d 90 01 01 48 ff c5 48 81 fd 90 02 04 0f 85 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}