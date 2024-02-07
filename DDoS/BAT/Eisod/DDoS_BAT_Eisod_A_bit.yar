
rule DDoS_BAT_Eisod_A_bit{
	meta:
		description = "DDoS:BAT/Eisod.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {5b 00 5a 00 65 00 70 00 68 00 79 00 72 00 5d 00 7b 00 30 00 7d 00 5b 00 7b 00 31 00 7d 00 5d 00 } //01 00  [Zephyr]{0}[{1}]
		$a_01_1 = {49 00 6e 00 69 00 74 00 61 00 74 00 65 00 64 00 20 00 64 00 65 00 6e 00 69 00 61 00 6c 00 20 00 6f 00 66 00 20 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 61 00 74 00 74 00 61 00 63 00 6b 00 } //01 00  Initated denial of service attack
		$a_01_2 = {75 00 70 00 6c 00 6f 00 61 00 64 00 69 00 6e 00 67 00 2f 00 67 00 65 00 74 00 74 00 69 00 6e 00 67 00 20 00 73 00 6e 00 61 00 70 00 73 00 68 00 6f 00 74 00 2e 00 } //01 00  uploading/getting snapshot.
		$a_01_3 = {54 43 50 44 44 4f 53 } //01 00  TCPDDOS
		$a_01_4 = {53 74 61 72 74 49 6d 70 6c 61 6e 74 69 6e 67 } //00 00  StartImplanting
	condition:
		any of ($a_*)
 
}