
rule TrojanDropper_Win32_Blathla_A{
	meta:
		description = "TrojanDropper:Win32/Blathla.A,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {2d 33 23 26 90 01 38 02 4e 04 0c 0c 4e 1a 07 18 60 90 01 06 60 e0 23 2b 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}