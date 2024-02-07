
rule Trojan_Win32_Farfli_BAV_MTB{
	meta:
		description = "Trojan:Win32/Farfli.BAV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {8d 45 98 89 4d fc 56 68 90 02 04 50 ff 15 90 02 04 83 c4 10 8d 45 98 50 6a 00 6a 00 ff 15 90 02 04 8b f8 85 ff 74 90 00 } //02 00 
		$a_03_1 = {53 55 56 57 6a 40 bf 58 db 04 00 68 00 30 00 00 33 ed 57 8b d9 55 ff 15 90 02 04 8b f0 57 56 68 90 00 } //01 00 
		$a_01_2 = {31 30 33 2e 31 30 30 2e 32 31 30 2e 39 } //01 00  103.100.210.9
		$a_01_3 = {31 35 34 2e 32 31 31 2e 31 33 2e 31 31 } //00 00  154.211.13.11
	condition:
		any of ($a_*)
 
}