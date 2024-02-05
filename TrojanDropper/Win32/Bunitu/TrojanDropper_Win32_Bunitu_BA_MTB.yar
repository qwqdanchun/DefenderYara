
rule TrojanDropper_Win32_Bunitu_BA_MTB{
	meta:
		description = "TrojanDropper:Win32/Bunitu.BA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {83 e8 03 a3 90 01 04 8b 0d 90 01 04 2b 0d 90 01 04 89 0d 90 01 04 8b 15 90 01 04 03 15 90 01 04 89 15 90 01 04 83 3d 90 01 04 00 0f 85 90 00 } //01 00 
		$a_00_1 = {81 e9 09 b5 00 00 51 c3 } //00 00 
	condition:
		any of ($a_*)
 
}