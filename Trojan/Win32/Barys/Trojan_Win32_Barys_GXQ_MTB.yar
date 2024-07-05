
rule Trojan_Win32_Barys_GXQ_MTB{
	meta:
		description = "Trojan:Win32/Barys.GXQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 05 00 "
		
	strings :
		$a_03_0 = {51 50 57 ff 15 90 01 04 6a 04 68 00 30 00 00 68 04 01 00 00 6a 00 57 ff 15 90 01 04 6a 00 6a 11 68 90 01 04 8b f0 56 57 ff 15 90 00 } //05 00 
		$a_03_1 = {51 50 57 ff 54 24 90 01 01 6a 04 68 00 30 00 00 68 04 01 00 00 6a 00 57 ff 94 24 90 01 04 6a 00 6a 11 68 90 01 04 8b f0 56 57 ff 54 24 90 00 } //01 00 
		$a_01_2 = {69 6d 67 75 69 5f 6c 6f 67 2e 74 78 74 } //00 00  imgui_log.txt
	condition:
		any of ($a_*)
 
}