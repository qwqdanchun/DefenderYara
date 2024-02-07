
rule Worm_BAT_Nyan_YA_MTB{
	meta:
		description = "Worm:BAT/Nyan.YA!MTB,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {4e 79 61 6e 53 74 75 62 } //01 00  NyanStub
		$a_01_1 = {62 6f 74 43 6f 6e 6e 65 63 74 65 64 } //01 00  botConnected
		$a_01_2 = {53 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 66 00 72 00 6f 00 6d 00 20 00 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 } //01 00  Select * from AntivirusProduct
		$a_01_3 = {2f 00 43 00 20 00 63 00 68 00 6f 00 69 00 63 00 65 00 20 00 2f 00 43 00 20 00 59 00 20 00 2f 00 4e 00 20 00 2f 00 44 00 20 00 59 00 20 00 2f 00 54 00 20 00 31 00 20 00 26 00 20 00 44 00 65 00 6c 00 } //00 00  /C choice /C Y /N /D Y /T 1 & Del
	condition:
		any of ($a_*)
 
}