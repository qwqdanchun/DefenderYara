
rule Trojan_Win32_Small_CE{
	meta:
		description = "Trojan:Win32/Small.CE,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {68 74 74 70 3a 2f 2f 67 70 74 30 2e 72 75 2f 77 65 62 2f 72 74 63 6f 6d } //01 00  http://gpt0.ru/web/rtcom
		$a_03_1 = {68 c8 00 00 00 68 90 01 02 40 00 e8 90 01 02 00 00 68 90 01 02 40 00 68 90 01 02 40 00 e8 90 01 02 00 00 68 90 01 02 40 00 68 90 01 02 40 00 e8 90 01 02 00 00 83 f8 ff 74 08 6a 00 e8 90 01 02 00 00 90 00 } //01 00 
		$a_03_2 = {6a 01 6a 00 68 90 01 02 40 00 ff 35 90 01 02 40 00 e8 90 01 02 00 00 68 ac 33 40 00 e8 90 01 02 00 00 6a 05 68 90 01 02 40 00 e8 90 01 01 00 00 00 6a 00 e8 01 00 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}