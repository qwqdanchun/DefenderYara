
rule Trojan_BAT_Taskun_KBA_MTB{
	meta:
		description = "Trojan:BAT/Taskun.KBA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 03 00 00 0a 00 "
		
	strings :
		$a_01_0 = {35 00 30 00 30 00 34 00 35 00 7c 00 7c 00 34 00 43 00 30 00 30 00 31 00 30 00 30 00 33 00 7c 00 37 00 42 00 46 00 32 00 39 00 34 00 } //0a 00 
		$a_01_1 = {36 00 34 00 36 00 35 00 32 00 45 00 30 00 30 00 44 00 30 00 30 00 44 00 30 00 30 00 41 00 32 00 34 00 } //01 00 
		$a_01_2 = {44 00 6f 00 64 00 67 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}