
rule Trojan_Win64_IcedID_DT_MTB{
	meta:
		description = "Trojan:Win64/IcedID.DT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 0a 00 00 0a 00 "
		
	strings :
		$a_01_0 = {44 66 67 6a 6b 67 73 64 66 64 67 68 6a 66 73 61 } //01 00  Dfgjkgsdfdghjfsa
		$a_01_1 = {49 46 48 4b 57 77 59 74 50 72 43 } //01 00  IFHKWwYtPrC
		$a_01_2 = {51 7a 74 68 4e 6d 6e 77 6d 71 46 } //01 00  QzthNmnwmqF
		$a_01_3 = {56 74 47 41 72 55 42 73 46 5a } //01 00  VtGArUBsFZ
		$a_01_4 = {4d 61 46 56 5a 79 68 6b 4b 4f } //0a 00  MaFVZyhkKO
		$a_01_5 = {47 68 62 61 73 66 6a 6b 6e 62 79 68 6a 61 6a 6b 61 73 } //01 00  Ghbasfjknbyhjajkas
		$a_01_6 = {41 49 61 4e 59 55 46 66 55 6f 50 } //01 00  AIaNYUFfUoP
		$a_01_7 = {4e 45 48 56 63 42 49 6b 65 49 56 } //01 00  NEHVcBIkeIV
		$a_01_8 = {55 66 4b 7a 41 50 6d 53 44 74 7a } //01 00  UfKzAPmSDtz
		$a_01_9 = {62 70 71 4b 43 47 52 68 78 67 } //00 00  bpqKCGRhxg
	condition:
		any of ($a_*)
 
}