
rule Trojan_AndroidOS_SMSPay_A_MTB{
	meta:
		description = "Trojan:AndroidOS/SMSPay.A!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,04 00 04 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {74 78 2e 69 74 74 75 6e 2e 63 6f 6d 2f 77 65 69 78 69 6e } //01 00  tx.ittun.com/weixin
		$a_01_1 = {70 61 79 20 73 6d 73 } //01 00  pay sms
		$a_01_2 = {49 53 65 6e 64 4d 65 73 73 61 67 65 4c 69 73 74 65 6e 65 72 } //01 00  ISendMessageListener
		$a_01_3 = {68 61 73 52 65 61 64 4d 65 73 73 61 67 65 } //00 00  hasReadMessage
	condition:
		any of ($a_*)
 
}