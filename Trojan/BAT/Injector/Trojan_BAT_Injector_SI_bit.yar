
rule Trojan_BAT_Injector_SI_bit{
	meta:
		description = "Trojan:BAT/Injector.SI!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {50 6f 77 65 72 65 64 20 62 79 20 53 6d 61 72 74 41 73 73 65 6d 62 6c 79 } //1 Powered by SmartAssembly
		$a_03_1 = {23 00 66 00 6f 00 6c 00 64 00 65 00 72 00 23 00 5c 00 90 02 20 2e 00 62 00 61 00 74 00 90 00 } //1
		$a_03_2 = {25 00 61 00 70 00 70 00 64 00 61 00 74 00 61 00 25 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 53 00 74 00 61 00 72 00 74 00 20 00 4d 00 65 00 6e 00 75 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 73 00 5c 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 5c 00 90 02 20 2e 00 65 00 78 00 65 00 90 00 } //1
		$a_03_3 = {23 00 66 00 6f 00 6c 00 64 00 65 00 72 00 23 00 5c 00 90 02 20 2e 00 65 00 78 00 65 00 23 00 3a 00 5a 00 6f 00 6e 00 65 00 2e 00 49 00 64 00 65 00 6e 00 74 00 69 00 66 00 69 00 65 00 72 00 90 00 } //1
		$a_03_4 = {25 00 74 00 65 00 6d 00 70 00 25 00 5c 00 23 00 66 00 6f 00 6c 00 64 00 65 00 72 00 23 00 5c 00 90 02 20 2e 00 65 00 78 00 65 00 23 00 22 00 20 00 2f 00 66 00 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}