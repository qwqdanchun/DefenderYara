
rule Trojan_Win32_LokiBot_ETT_MTB{
	meta:
		description = "Trojan:Win32/LokiBot.ETT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {59 59 89 45 e8 6a 04 68 00 30 00 00 68 90 01 04 6a 00 ff 15 90 00 } //01 00 
		$a_01_1 = {6a 40 68 00 30 00 00 ff 75 f4 6a 00 ff 15 } //01 00 
		$a_01_2 = {6a 00 51 56 ff 75 e4 ff 34 18 ff 15 } //00 00 
	condition:
		any of ($a_*)
 
}