
rule TrojanDownloader_BAT_Tasker_G_MTB{
	meta:
		description = "TrojanDownloader:BAT/Tasker.G!MTB,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {75 00 65 00 6a 00 76 00 63 00 75 00 6d 00 75 00 22 00 31 00 65 00 74 00 67 00 63 00 76 00 67 00 22 00 31 00 75 00 65 00 22 00 6f 00 6b 00 70 00 77 00 76 00 67 00 22 00 31 00 6f 00 71 00 22 00 33 00 22 00 31 00 76 00 70 00 } //01 00  uejvcumu"1etgcvg"1ue"okpwvg"1oq"3"1vp
		$a_01_1 = {4b 00 70 00 78 00 71 00 6d 00 67 00 2f 00 47 00 7a 00 72 00 74 00 67 00 75 00 75 00 6b 00 71 00 70 00 } //01 00  Kpxqmg/Gzrtguukqp
		$a_01_2 = {52 00 41 00 4e 00 44 00 4f 00 4d 00 } //01 00  RANDOM
		$a_01_3 = {6a 00 76 00 76 00 72 00 75 00 3c 00 31 00 31 00 } //01 00  jvvru<11
		$a_01_4 = {72 00 63 00 75 00 76 00 67 00 30 00 } //00 00  rcuvg0
	condition:
		any of ($a_*)
 
}