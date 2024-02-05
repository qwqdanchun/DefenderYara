
rule Trojan_BAT_Qhost_A{
	meta:
		description = "Trojan:BAT/Qhost.A,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 65 00 74 00 63 00 5c 00 68 00 6f 00 73 00 74 00 73 00 } //01 00 
		$a_01_1 = {31 00 39 00 35 00 2e 00 32 00 34 00 32 00 2e 00 31 00 36 00 31 00 2e 00 32 00 33 00 35 00 20 00 76 00 6b 00 6f 00 6e 00 74 00 61 00 6b 00 74 00 65 00 2e 00 72 00 75 00 } //01 00 
		$a_01_2 = {31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 20 00 67 00 6f 00 6f 00 67 00 6c 00 65 00 2e 00 63 00 6f 00 6d 00 } //00 00 
	condition:
		any of ($a_*)
 
}