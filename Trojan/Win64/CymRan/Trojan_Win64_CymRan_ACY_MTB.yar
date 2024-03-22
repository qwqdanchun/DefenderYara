
rule Trojan_Win64_CymRan_ACY_MTB{
	meta:
		description = "Trojan:Win64/CymRan.ACY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {48 63 c2 48 8d 0c 80 48 8d 05 67 99 03 00 48 8d 0c c8 } //01 00 
		$a_01_1 = {48 8d 0c 80 48 8d 05 f4 98 03 00 48 8d 0c c8 } //00 00 
	condition:
		any of ($a_*)
 
}