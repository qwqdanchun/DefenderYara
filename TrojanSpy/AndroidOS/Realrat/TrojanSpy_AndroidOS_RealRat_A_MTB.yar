
rule TrojanSpy_AndroidOS_RealRat_A_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/RealRat.A!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,06 00 06 00 0c 00 00 01 00 "
		
	strings :
		$a_00_0 = {49 4e 53 54 41 4c 4c 45 44 20 52 41 54 } //01 00  INSTALLED RAT
		$a_00_1 = {73 6d 73 5f 63 6f 6e 74 61 63 74 73 } //01 00  sms_contacts
		$a_00_2 = {2f 72 65 63 65 69 76 65 2e 70 68 70 } //01 00  /receive.php
		$a_00_3 = {68 69 64 64 65 6e 5f 61 70 6b } //01 00  hidden_apk
		$a_00_4 = {61 6c 6c 5f 73 6d 73 } //01 00  all_sms
		$a_00_5 = {73 74 61 72 74 65 72 2e 74 78 74 } //01 00  starter.txt
		$a_00_6 = {73 74 61 74 75 73 } //01 00  status
		$a_00_7 = {66 61 74 61 2d 69 72 61 6e 2e 63 66 } //01 00  fata-iran.cf
		$a_00_8 = {72 65 6d 6f 74 65 2d 76 69 70 2e 74 6b } //01 00  remote-vip.tk
		$a_00_9 = {65 62 6c 61 67 68 2d 73 6e 61 2e 73 69 74 65 } //01 00  eblagh-sna.site
		$a_00_10 = {72 65 6d 6f 74 65 2d 62 65 73 74 2e 74 6b } //01 00  remote-best.tk
		$a_00_11 = {74 6f 70 72 61 74 2e 73 69 74 65 } //00 00  toprat.site
		$a_00_12 = {5d 04 00 00 5f } //ff 04 
	condition:
		any of ($a_*)
 
}