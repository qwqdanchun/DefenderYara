
rule HackTool_Win64_AtosevCrypt_SI_MTB{
	meta:
		description = "HackTool:Win64/AtosevCrypt.SI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 02 00 00 0a 00 "
		
	strings :
		$a_01_0 = {33 d2 4d 8d 40 01 8b c6 ff c6 f7 f5 42 0f b6 04 3a 43 32 44 01 ff 41 88 40 ff 3b f3 72 } //02 00 
		$a_03_1 = {48 8b d0 48 8b cf ff 15 90 01 02 00 00 48 85 c0 74 90 01 01 48 8b c8 ff 15 90 01 02 00 00 48 8b d5 48 8b cf 4c 8b f0 ff 15 90 01 02 00 00 8b e8 4d 85 f6 90 00 } //00 00 
		$a_00_2 = {5d 04 00 00 e6 6b 04 80 5c 3a } //00 00 
	condition:
		any of ($a_*)
 
}