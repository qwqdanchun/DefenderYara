
rule Trojan_Win32_NSISInject_FN_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.FN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 55 00 6e 00 64 00 6f 00 63 00 74 00 6f 00 72 00 5c 00 50 00 6c 00 6f 00 73 00 69 00 6f 00 6e 00 73 00 5c 00 4f 00 72 00 64 00 64 00 65 00 6c 00 65 00 6e 00 64 00 65 00 73 00 5c 00 44 00 65 00 67 00 72 00 61 00 64 00 61 00 62 00 6c 00 65 00 2e 00 6d 00 69 00 73 00 } //01 00  \Undoctor\Plosions\Orddelendes\Degradable.mis
		$a_01_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 45 00 6e 00 66 00 6f 00 6c 00 64 00 65 00 6e 00 5c 00 46 00 72 00 65 00 64 00 6e 00 69 00 6e 00 67 00 73 00 6e 00 76 00 6e 00 } //01 00  Software\Enfolden\Fredningsnvn
		$a_01_2 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 46 00 61 00 6b 00 74 00 6f 00 72 00 61 00 6e 00 61 00 6c 00 79 00 73 00 65 00 72 00 6e 00 65 00 73 00 5c 00 7a 00 6f 00 6f 00 69 00 64 00 } //01 00  Software\Faktoranalysernes\zooid
		$a_01_3 = {5c 00 4d 00 69 00 73 00 63 00 72 00 65 00 65 00 64 00 5c 00 70 00 69 00 6e 00 6f 00 63 00 68 00 65 00 74 00 73 00 5c 00 43 00 68 00 65 00 66 00 5c 00 54 00 61 00 72 00 69 00 66 00 65 00 72 00 65 00 72 00 2e 00 41 00 65 00 72 00 } //01 00  \Miscreed\pinochets\Chef\Tariferer.Aer
		$a_01_4 = {46 00 61 00 62 00 75 00 6c 00 69 00 73 00 74 00 73 00 } //00 00  Fabulists
	condition:
		any of ($a_*)
 
}