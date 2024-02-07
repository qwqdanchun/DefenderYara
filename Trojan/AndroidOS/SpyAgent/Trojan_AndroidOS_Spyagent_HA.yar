
rule Trojan_AndroidOS_Spyagent_HA{
	meta:
		description = "Trojan:AndroidOS/Spyagent.HA,SIGNATURE_TYPE_DEXHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {54 77 54 65 78 74 43 68 61 6e 67 65 } //01 00  TwTextChange
		$a_01_1 = {6d 46 62 4f 6c 64 54 65 78 74 } //01 00  mFbOldText
		$a_01_2 = {6d 50 75 62 67 47 6d 61 69 6c 54 65 78 74 } //01 00  mPubgGmailText
		$a_01_3 = {47 6d 73 4f 6c 64 54 65 78 74 } //00 00  GmsOldText
	condition:
		any of ($a_*)
 
}