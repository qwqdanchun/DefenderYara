
rule Backdoor_Linux_Gafgyt_AH_xp{
	meta:
		description = "Backdoor:Linux/Gafgyt.AH!xp,SIGNATURE_TYPE_ELFHSTR_EXT,03 00 03 00 06 00 00 "
		
	strings :
		$a_01_0 = {4b 54 40 24 53 49 54 40 24 53 4c 54 40 24 53 4c 54 40 24 53 41 54 40 24 53 54 54 40 24 53 54 54 40 24 53 4b } //1 KT@$SIT@$SLT@$SLT@$SAT@$STT@$STT@$SK
		$a_01_1 = {4c 54 40 24 53 4f 54 40 24 53 4c 54 40 24 53 4e 54 40 24 53 4f 54 40 24 53 47 54 40 24 53 54 54 40 24 53 46 54 40 24 53 4f } //1 LT@$SOT@$SLT@$SNT@$SOT@$SGT@$STT@$SFT@$SO
		$a_01_2 = {4a 54 40 24 53 55 54 40 24 53 4e 54 40 24 53 4b } //1 JT@$SUT@$SNT@$SK
		$a_01_3 = {2f 54 40 24 53 62 54 40 24 53 69 54 40 24 53 6e 54 40 24 53 2f 54 40 24 53 62 54 40 24 53 75 54 40 24 53 73 54 40 24 53 79 54 40 24 53 62 54 40 24 53 6f 54 40 24 53 78 54 40 24 53 } //1 /T@$SbT@$SiT@$SnT@$S/T@$SbT@$SuT@$SsT@$SyT@$SbT@$SoT@$SxT@$S
		$a_01_4 = {55 54 40 24 53 44 54 40 24 53 50 } //1 UT@$SDT@$SP
		$a_01_5 = {47 54 40 24 53 45 54 40 24 53 54 54 40 24 53 4c 54 40 24 53 4f 54 40 24 53 43 54 40 24 53 41 54 40 24 53 4c 54 40 24 53 49 54 40 24 53 50 } //1 GT@$SET@$STT@$SLT@$SOT@$SCT@$SAT@$SLT@$SIT@$SP
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=3
 
}