
rule Trojan_BAT_AgentTesla_EXU_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EXU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {6c 00 42 00 41 00 62 00 41 00 6b 00 47 00 41 00 47 00 42 00 41 00 62 00 41 00 45 00 47 00 41 00 75 00 42 00 51 00 61 00 41 00 63 00 47 00 41 00 70 00 42 00 67 00 63 00 41 00 38 00 } //01 00  lBAbAkGAGBAbAEGAuBQaAcGApBgcA8
		$a_01_1 = {41 00 79 00 42 00 77 00 62 00 41 00 63 00 48 00 41 00 6c 00 42 00 51 00 62 00 41 00 45 00 47 00 41 00 79 00 42 00 67 00 52 00 22 06 43 00 41 00 31 00 42 00 67 00 } //01 00  AyBwbAcHAlBQbAEGAyBgRآCA1Bg
		$a_01_2 = {00 53 74 72 52 65 76 65 72 73 65 00 } //01 00  匀牴敒敶獲e
		$a_01_3 = {00 46 72 6f 6d 42 61 73 65 36 34 } //00 00 
	condition:
		any of ($a_*)
 
}