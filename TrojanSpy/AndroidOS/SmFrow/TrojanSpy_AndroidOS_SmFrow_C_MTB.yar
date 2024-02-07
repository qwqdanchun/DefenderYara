
rule TrojanSpy_AndroidOS_SmFrow_C_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/SmFrow.C!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 4d 53 53 70 61 6d 52 65 63 65 69 76 65 72 } //01 00  SMSSpamReceiver
		$a_00_1 = {63 68 65 63 6b 4c 69 73 74 65 6e 53 4d 53 } //01 00  checkListenSMS
		$a_00_2 = {53 70 61 6d 5f 41 64 64 72 65 73 73 } //01 00  Spam_Address
		$a_00_3 = {73 6d 73 72 65 63 6f 6d 6d 65 6e 64 2e 74 78 74 } //01 00  smsrecommend.txt
		$a_00_4 = {53 4d 53 5f 53 70 61 6d 5f 4d 61 6e 61 67 65 72 } //01 00  SMS_Spam_Manager
		$a_00_5 = {53 4d 53 5f 53 70 61 6d 5f 42 6f 64 79 } //00 00  SMS_Spam_Body
	condition:
		any of ($a_*)
 
}