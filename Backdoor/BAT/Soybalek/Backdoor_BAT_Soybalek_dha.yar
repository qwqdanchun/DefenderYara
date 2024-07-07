
rule Backdoor_BAT_Soybalek_dha{
	meta:
		description = "Backdoor:BAT/Soybalek!dha,SIGNATURE_TYPE_PEHSTR,02 00 02 00 03 00 00 "
		
	strings :
		$a_01_0 = {4f 77 61 41 75 74 68 2e 64 6c 6c 00 53 65 63 75 72 69 74 79 00 4d 69 63 72 6f 73 6f 66 74 2e 45 78 63 68 61 6e 67 65 2e 43 6c 69 65 6e 74 73 00 } //1
		$a_01_1 = {31 00 32 00 33 00 34 00 35 00 36 00 37 00 38 00 00 15 63 00 3a 00 5c 00 6c 00 6f 00 67 00 2e 00 74 00 78 00 74 00 00 11 75 00 73 00 65 00 72 00 6e 00 61 00 6d 00 65 00 00 11 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 00 01 00 2f 7b 00 } //1 12345678ᔀc:\log.txtᄀusernameᄀpasswordĀ⼀{
		$a_01_2 = {5c 53 79 62 65 72 53 70 61 63 65 5c 44 65 73 6b 74 6f 70 5c 6f 77 61 5c 48 74 74 70 73 45 78 74 73 5c 48 74 74 70 73 45 78 74 73 5c 48 74 74 70 73 45 78 74 73 5c 6f 62 6a 5c 52 65 6c 65 61 73 65 5c 4f 77 61 41 75 74 68 2e 70 64 62 00 } //2
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*2) >=2
 
}