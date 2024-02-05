
rule Trojan_BAT_CryptInject_B_MSR{
	meta:
		description = "Trojan:BAT/CryptInject.B!MSR,SIGNATURE_TYPE_PEHSTR,15 00 15 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {53 6d 61 72 74 41 73 73 65 6d 62 6c 79 2e 48 6f 75 73 65 4f 66 43 61 72 64 73 } //0a 00 
		$a_01_1 = {43 72 65 61 74 65 45 6e 63 72 79 70 74 6f 72 } //01 00 
		$a_01_2 = {31 39 32 2e 33 2e 31 35 37 2e 31 30 34 } //01 00 
		$a_01_3 = {31 38 35 2e 31 36 31 2e 32 30 39 2e 31 38 33 } //01 00 
		$a_01_4 = {31 38 35 2e 31 36 31 2e 32 31 30 2e 31 31 31 } //01 00 
		$a_01_5 = {31 38 35 2e 31 35 37 2e 37 39 2e 31 31 35 } //01 00 
		$a_01_6 = {31 37 36 2e 31 30 37 2e 31 37 37 2e 35 34 } //01 00 
		$a_01_7 = {31 39 33 2e 31 31 31 2e 31 35 35 2e 31 33 37 } //00 00 
	condition:
		any of ($a_*)
 
}