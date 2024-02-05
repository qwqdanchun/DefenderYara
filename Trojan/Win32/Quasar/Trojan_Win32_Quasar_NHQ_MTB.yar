
rule Trojan_Win32_Quasar_NHQ_MTB{
	meta:
		description = "Trojan:Win32/Quasar.NHQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 05 00 "
		
	strings :
		$a_03_0 = {c1 e6 02 89 74 24 90 01 01 e8 7b 35 05 00 8b 44 24 90 01 01 8b 44 24 90 01 01 0f b6 5c 24 90 01 01 8b 6c 24 90 01 01 8b b5 08 01 00 00 8b 95 0c 01 00 00 90 00 } //01 00 
		$a_01_1 = {6e 6e 45 44 75 } //00 00 
	condition:
		any of ($a_*)
 
}