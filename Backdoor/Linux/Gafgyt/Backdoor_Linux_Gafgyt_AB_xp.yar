
rule Backdoor_Linux_Gafgyt_AB_xp{
	meta:
		description = "Backdoor:Linux/Gafgyt.AB!xp,SIGNATURE_TYPE_ELFHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {4b 54 40 24 53 49 54 40 24 53 4c 54 40 24 53 4c 54 40 24 53 41 54 40 24 53 54 54 40 24 53 54 54 40 24 53 4b } //01 00  KT@$SIT@$SLT@$SLT@$SAT@$STT@$STT@$SK
		$a_01_1 = {4c 54 40 24 53 4f 54 40 24 53 4c 54 40 24 53 4e 54 40 24 53 4f 54 40 24 53 47 54 40 24 53 54 54 40 24 53 46 54 40 24 53 4f } //01 00  LT@$SOT@$SLT@$SNT@$SOT@$SGT@$STT@$SFT@$SO
		$a_01_2 = {2f 54 40 24 53 62 54 40 24 53 69 54 40 24 53 6e 54 40 24 53 2f 54 40 24 53 62 54 40 24 53 75 54 40 24 53 73 54 40 24 53 79 54 40 24 53 62 54 40 24 53 6f 54 40 24 53 78 54 40 24 53 } //01 00  /T@$SbT@$SiT@$SnT@$S/T@$SbT@$SuT@$SsT@$SyT@$SbT@$SoT@$SxT@$S
		$a_01_3 = {55 54 40 24 53 44 54 40 24 53 50 } //00 00  UT@$SDT@$SP
		$a_00_4 = {5d 04 00 } //00 9f 
	condition:
		any of ($a_*)
 
}