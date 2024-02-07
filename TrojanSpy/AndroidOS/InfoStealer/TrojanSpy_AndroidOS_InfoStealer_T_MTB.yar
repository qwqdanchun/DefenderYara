
rule TrojanSpy_AndroidOS_InfoStealer_T_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/InfoStealer.T!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {50 65 72 6d 43 68 65 63 41 63 74 69 76 69 74 79 2e } //01 00  PermChecActivity.
		$a_00_1 = {43 6d 64 53 65 6e 64 65 72 2e 63 6d 64 5f 63 6e 74 28 29 3a 2d 20 } //01 00  CmdSender.cmd_cnt():- 
		$a_00_2 = {6d 5f 6c 6f 63 6f 5f 64 62 2e 64 62 } //01 00  m_loco_db.db
		$a_00_3 = {73 70 5f 6b 65 79 5f 72 65 6d 6f 74 65 5f 69 70 } //01 00  sp_key_remote_ip
		$a_00_4 = {73 70 6b 65 79 75 75 69 64 } //01 00  spkeyuuid
		$a_00_5 = {67 65 6d 74 6f 6f 6c 2e 73 79 74 65 73 2e 6e 65 74 } //00 00  gemtool.sytes.net
		$a_00_6 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}