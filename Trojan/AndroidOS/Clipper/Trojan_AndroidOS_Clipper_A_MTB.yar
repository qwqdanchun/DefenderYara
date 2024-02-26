
rule Trojan_AndroidOS_Clipper_A_MTB{
	meta:
		description = "Trojan:AndroidOS/Clipper.A!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {63 6f 6d 2f 49 6d 61 67 65 55 70 6c 6f 61 64 65 72 } //01 00  com/ImageUploader
		$a_00_1 = {57 65 61 72 52 65 70 6c 79 52 65 63 65 69 76 65 72 } //01 00  WearReplyReceiver
		$a_00_2 = {61 72 63 68 69 76 65 48 69 64 64 65 6e } //01 00  archiveHidden
		$a_00_3 = {62 74 63 41 64 64 72 65 73 73 } //00 00  btcAddress
	condition:
		any of ($a_*)
 
}