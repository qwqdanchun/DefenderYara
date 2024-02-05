
rule TrojanDropper_Win32_Cutwail_AB{
	meta:
		description = "TrojanDropper:Win32/Cutwail.AB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 5d ec 8b f3 8b 5b 3c 03 de 8a 43 06 90 01 60 90 02 30 8b 75 0c 8b 7d 10 8b 4d 08 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}