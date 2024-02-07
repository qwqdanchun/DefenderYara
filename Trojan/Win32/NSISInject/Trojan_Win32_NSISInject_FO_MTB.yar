
rule Trojan_Win32_NSISInject_FO_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.FO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {46 00 72 00 73 00 74 00 65 00 67 00 61 00 6e 00 67 00 73 00 76 00 6c 00 67 00 65 00 72 00 65 00 20 00 53 00 65 00 74 00 75 00 70 00 } //01 00  Frstegangsvlgere Setup
		$a_01_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 53 00 69 00 6c 00 69 00 63 00 69 00 66 00 6c 00 75 00 6f 00 72 00 69 00 63 00 } //01 00  Software\Silicifluoric
		$a_01_2 = {54 00 6f 00 69 00 6c 00 65 00 74 00 61 00 72 00 74 00 69 00 6b 00 6c 00 65 00 72 00 6e 00 65 00 } //01 00  Toiletartiklerne
		$a_01_3 = {5c 00 53 00 70 00 69 00 72 00 65 00 6e 00 65 00 37 00 39 00 5c 00 53 00 70 00 6f 00 6b 00 65 00 73 00 70 00 65 00 72 00 73 00 6f 00 6e 00 73 00 31 00 34 00 38 00 2e 00 53 00 69 00 6d 00 } //01 00  \Spirene79\Spokespersons148.Sim
		$a_01_4 = {66 00 72 00 69 00 74 00 6e 00 6b 00 65 00 72 00 73 00 6b 00 65 00 72 00 } //00 00  fritnkersker
	condition:
		any of ($a_*)
 
}