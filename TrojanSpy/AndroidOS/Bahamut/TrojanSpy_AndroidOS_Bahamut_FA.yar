
rule TrojanSpy_AndroidOS_Bahamut_FA{
	meta:
		description = "TrojanSpy:AndroidOS/Bahamut.FA,SIGNATURE_TYPE_DEXHSTR_EXT,06 00 06 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {4c 63 6f 6d 2f 61 74 2f 63 6f 64 65 72 2f 63 6f 6d 6d 61 6e 64 68 61 6e 64 6c 65 72 2f 4d 65 73 73 61 67 65 48 61 6e 64 6c 65 72 3b } //01 00  Lcom/at/coder/commandhandler/MessageHandler;
		$a_01_1 = {72 65 63 6f 64 65 72 5f } //01 00  recoder_
		$a_01_2 = {63 6f 6d 2e 61 74 2e 63 6f 64 65 72 2e 63 6f 6d 6d 61 6e 64 68 61 6e 64 6c 65 72 } //01 00  com.at.coder.commandhandler
		$a_01_3 = {6f 66 66 68 6f 6f 6b 31 } //01 00  offhook1
		$a_01_4 = {6d 73 67 66 6f 6c 64 65 72 } //01 00  msgfolder
		$a_01_5 = {7b 22 63 6f 6d 6d 61 6e 64 22 3a 22 25 73 22 2c 22 70 61 74 68 22 3a 22 25 73 22 2c 22 66 69 6c 65 73 22 } //01 00  {"command":"%s","path":"%s","files"
		$a_01_6 = {7b 22 6e 61 6d 65 22 3a 22 25 73 22 2c 22 64 69 72 73 22 3a 22 25 64 22 2c 22 66 69 6c 65 73 22 3a 22 25 64 22 2c 22 69 73 66 6f 6c 64 65 72 22 3a 22 25 64 22 2c 22 70 61 74 68 22 3a 22 25 73 22 7d } //00 00  {"name":"%s","dirs":"%d","files":"%d","isfolder":"%d","path":"%s"}
		$a_00_7 = {5d 04 00 00 } //05 fd 
	condition:
		any of ($a_*)
 
}