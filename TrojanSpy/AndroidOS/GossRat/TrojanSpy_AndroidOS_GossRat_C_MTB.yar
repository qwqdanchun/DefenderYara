
rule TrojanSpy_AndroidOS_GossRat_C_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/GossRat.C!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,08 00 08 00 05 00 00 05 00 "
		
	strings :
		$a_01_0 = {47 6f 73 73 69 70 65 72 4d 6f 64 65 6c } //01 00  GossiperModel
		$a_01_1 = {67 65 74 43 61 72 64 44 61 74 61 } //01 00  getCardData
		$a_01_2 = {4c 61 73 74 53 6d 73 4d 6f 64 65 6c } //01 00  LastSmsModel
		$a_01_3 = {73 65 6e 64 4f 74 70 52 65 71 54 6f 42 4b } //01 00  sendOtpReqToBK
		$a_01_4 = {67 65 74 4e 61 74 69 6f 6e 61 6c 43 6f 64 65 4c 69 6e 6b } //00 00  getNationalCodeLink
	condition:
		any of ($a_*)
 
}