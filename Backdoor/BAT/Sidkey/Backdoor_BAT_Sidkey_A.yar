
rule Backdoor_BAT_Sidkey_A{
	meta:
		description = "Backdoor:BAT/Sidkey.A,SIGNATURE_TYPE_PEHSTR,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 75 00 6c 00 73 00 73 00 6d 00 2e 00 65 00 78 00 65 00 00 00 00 00 5c 41 70 74 72 61 44 65 62 75 67 2e 6c 6e 6b 00 } //01 00 
		$a_01_1 = {43 4f 4e 4e 45 43 54 49 4e 47 20 54 4f 20 50 49 4e 20 50 41 44 2e 2e 2e 0a 0a 00 00 00 00 2e 2e 2e 0a 0a 00 00 00 50 69 6e 70 61 64 31 00 00 00 } //01 00 
		$a_01_2 = {44 49 53 50 45 4e 53 45 20 4f 50 45 52 41 54 49 4f 4e 20 44 45 4e 49 45 44 2e 20 45 4e 54 45 52 20 53 45 53 53 49 4f 4e 20 4b 45 59 2e 0a 00 } //00 00 
	condition:
		any of ($a_*)
 
}