
rule TrojanSpy_AndroidOS_SmsThief_AZ_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/SmsThief.AZ!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {63 6f 6d 2f 6c 79 6d 6f 72 73 2f 6c 75 6c 75 6d 6f 6e 65 79 } //01 00  com/lymors/lulumoney
		$a_00_1 = {4d 79 53 6d 73 53 65 72 76 69 63 65 } //01 00  MySmsService
		$a_00_2 = {4c 6d 72 61 20 41 70 70 } //01 00  Lmra App
		$a_00_3 = {67 65 74 4e 61 74 69 6f 6e 61 6c 69 74 79 } //01 00  getNationality
		$a_00_4 = {53 6d 73 4d 6f 64 65 6c } //01 00  SmsModel
		$a_00_5 = {67 65 74 44 61 74 65 4f 66 42 69 72 74 68 } //00 00  getDateOfBirth
	condition:
		any of ($a_*)
 
}