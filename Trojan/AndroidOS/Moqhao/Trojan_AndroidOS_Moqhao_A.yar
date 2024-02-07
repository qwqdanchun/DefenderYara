
rule Trojan_AndroidOS_Moqhao_A{
	meta:
		description = "Trojan:AndroidOS/Moqhao.A,SIGNATURE_TYPE_DEXHSTR_EXT,06 00 06 00 05 00 00 03 00 "
		
	strings :
		$a_00_0 = {4b 4d 52 65 63 65 69 76 65 72 } //03 00  KMReceiver
		$a_00_1 = {4b 53 4d 52 65 63 65 69 76 65 72 } //01 00  KSMReceiver
		$a_00_2 = {4b 5f 47 45 54 5f 53 4d 53 } //01 00  K_GET_SMS
		$a_00_3 = {4b 5f 4a 53 5f 4c 4f 47 49 4e } //01 00  K_JS_LOGIN
		$a_00_4 = {4b 5f 53 4d 53 5f 43 4f 4e 54 45 4e 54 } //00 00  K_SMS_CONTENT
	condition:
		any of ($a_*)
 
}