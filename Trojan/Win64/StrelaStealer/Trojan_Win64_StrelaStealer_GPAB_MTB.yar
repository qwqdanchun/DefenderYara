
rule Trojan_Win64_StrelaStealer_GPAB_MTB{
	meta:
		description = "Trojan:Win64/StrelaStealer.GPAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 02 00 "
		
	strings :
		$a_01_0 = {6f 75 74 2e 64 6c 6c 00 44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 00 4d 65 6d 43 70 79 00 53 74 72 43 6d 70 } //02 00 
		$a_01_1 = {67 42 75 66 00 78 00 78 2e 31 00 78 2e 31 31 00 78 2e 31 33 00 78 2e 33 00 78 2e 35 00 78 2e 37 00 78 2e 39 00 79 00 79 2e } //00 00 
	condition:
		any of ($a_*)
 
}