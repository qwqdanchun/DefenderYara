
rule TrojanDropper_Win32_Astercax_B{
	meta:
		description = "TrojanDropper:Win32/Astercax.B,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {83 e8 4f 0f 80 ec 05 00 00 50 8d 47 3c 50 6a 28 ff 15 90 01 02 40 00 6a 01 6a 01 ff 15 90 01 02 40 00 83 e8 27 0f 80 cc 05 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}