
rule Trojan_BAT_Netwire_KZD_MTB{
	meta:
		description = "Trojan:BAT/Netwire.KZD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {54 00 56 00 71 00 51 00 41 00 41 00 4d 00 41 00 41 00 41 00 41 00 45 00 41 00 41 00 41 00 41 00 } //01 00  TVqQAAMAAAAEAAAA
		$a_01_1 = {63 00 6d 00 39 00 6e 00 63 00 6d 00 46 00 74 00 49 00 47 00 4e 00 68 00 62 00 6d 00 35 00 } //01 00  cm9ncmFtIGNhbm5
		$a_01_2 = {2f 00 2f 00 38 00 41 00 41 00 4c 00 67 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 } //01 00  //8AALgAAAAAAAA
		$a_01_3 = {4d 00 44 00 41 00 77 00 4d 00 44 00 41 00 77 00 4d 00 44 00 41 00 77 00 4d 00 44 00 41 00 77 00 49 00 } //02 00  MDAwMDAwMDAwMDAwI
		$a_81_4 = {47 65 74 54 79 70 65 73 } //02 00  GetTypes
		$a_81_5 = {49 44 65 66 65 72 72 65 64 } //02 00  IDeferred
		$a_81_6 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //02 00  InvokeMember
		$a_81_7 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //00 00  FromBase64String
	condition:
		any of ($a_*)
 
}