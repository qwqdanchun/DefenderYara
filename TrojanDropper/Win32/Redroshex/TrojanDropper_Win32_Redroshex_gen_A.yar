
rule TrojanDropper_Win32_Redroshex_gen_A{
	meta:
		description = "TrojanDropper:Win32/Redroshex.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_02_0 = {51 53 56 57 68 90 01 04 6a 66 6a 00 ff 15 90 01 04 8b f0 56 6a 00 ff 15 90 01 04 56 6a 00 8b f8 ff 15 90 01 04 6a 00 68 80 00 00 00 6a 02 6a 00 6a 01 68 00 00 00 c0 68 90 01 04 8b d8 ff 15 90 01 04 8b f0 8d 44 24 0c 6a 00 50 57 53 56 ff 15 90 01 04 85 c0 74 07 56 ff 15 90 01 04 6a 00 68 90 01 04 ff 15 90 01 04 5f 5e 5b 59 c3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}