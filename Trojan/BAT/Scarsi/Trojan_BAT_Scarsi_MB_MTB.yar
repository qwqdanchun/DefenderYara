
rule Trojan_BAT_Scarsi_MB_MTB{
	meta:
		description = "Trojan:BAT/Scarsi.MB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,13 00 13 00 04 00 00 0a 00 "
		
	strings :
		$a_01_0 = {06 0c 16 0d 08 12 03 28 0f 00 00 0a 06 07 02 07 18 6f 10 00 00 0a 1f 10 28 11 00 00 0a 6f 12 00 00 0a de 0a } //05 00 
		$a_01_1 = {57 15 a2 09 09 08 00 00 00 5a a4 01 00 14 00 00 01 00 00 00 22 00 00 00 03 00 00 00 01 00 00 00 0a 00 00 00 03 00 00 00 24 00 00 00 11 00 00 00 03 00 00 00 01 00 00 00 01 00 00 00 02 00 00 00 02 } //02 00 
		$a_01_2 = {54 72 79 44 65 71 75 65 75 65 } //02 00  TryDequeue
		$a_01_3 = {45 6e 71 75 65 75 65 } //00 00  Enqueue
	condition:
		any of ($a_*)
 
}