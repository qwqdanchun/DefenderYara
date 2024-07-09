
rule TrojanDropper_BAT_Marocan_B_bit{
	meta:
		description = "TrojanDropper:BAT/Marocan.B!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {11 04 02 11 04 91 ?? 8e b7 03 8e b7 5d da 03 ?? 91 da ?? d6 28 ?? 00 00 0a 9c ?? 17 d6 b5 } //1
		$a_01_1 = {28 26 00 00 0a 02 28 1e 00 00 0a 28 26 00 00 0a 03 6f 27 00 00 0a 28 14 00 00 06 6f 28 00 00 0a 0a } //1
		$a_01_2 = {00 43 6f 6e 63 61 74 00 43 6f 6e 76 65 72 74 00 46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 00 } //1
		$a_01_3 = {00 50 72 6f 63 65 73 73 00 53 74 61 72 74 00 } //1
		$a_01_4 = {00 45 6e 76 69 72 6f 6e 6d 65 6e 74 00 53 70 65 63 69 61 6c 46 6f 6c 64 65 72 00 47 65 74 46 6f 6c 64 65 72 50 61 74 68 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}