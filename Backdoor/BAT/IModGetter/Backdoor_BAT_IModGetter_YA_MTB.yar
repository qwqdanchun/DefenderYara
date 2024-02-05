
rule Backdoor_BAT_IModGetter_YA_MTB{
	meta:
		description = "Backdoor:BAT/IModGetter.YA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {6e 00 65 00 74 00 2e 00 74 00 63 00 70 00 3a 00 2f 00 2f 00 7b 00 30 00 7d 00 3a 00 32 00 33 00 35 00 36 00 36 00 2f 00 49 00 4d 00 6f 00 64 00 75 00 6c 00 65 00 47 00 65 00 74 00 74 00 65 00 72 00 } //01 00 
		$a_01_1 = {25 00 55 00 53 00 45 00 52 00 50 00 52 00 4f 00 46 00 49 00 4c 00 45 00 25 00 5c 00 41 00 70 00 70 00 44 00 61 00 74 00 61 00 5c 00 4c 00 6f 00 63 00 61 00 6c 00 5c 00 54 00 65 00 6d 00 70 00 5c 00 4e 00 65 00 74 00 50 00 6c 00 61 00 74 00 66 00 6f 00 72 00 6d 00 } //01 00 
		$a_01_2 = {2f 00 43 00 20 00 63 00 68 00 6f 00 69 00 63 00 65 00 20 00 2f 00 43 00 20 00 59 00 20 00 2f 00 4e 00 20 00 2f 00 44 00 20 00 59 00 20 00 2f 00 54 00 20 00 33 00 20 00 26 00 20 00 44 00 65 00 6c 00 20 00 22 00 } //01 00 
		$a_01_3 = {2f 00 43 00 20 00 73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 20 00 2f 00 63 00 72 00 65 00 61 00 74 00 65 00 20 00 2f 00 74 00 6e 00 20 00 5c 00 44 00 65 00 66 00 61 00 75 00 6c 00 74 00 73 00 5c 00 } //00 00 
	condition:
		any of ($a_*)
 
}