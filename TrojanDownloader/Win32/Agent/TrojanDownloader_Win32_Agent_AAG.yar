
rule TrojanDownloader_Win32_Agent_AAG{
	meta:
		description = "TrojanDownloader:Win32/Agent.AAG,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_00_0 = {61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 2e 6c 69 6d 65 77 65 62 73 2e 63 6f 6d 2f 7a 2f 67 61 74 65 2e 70 68 70 } //01 00  aaaaaaaaaaaaaaaaaaaaaa.limewebs.com/z/gate.php
		$a_03_1 = {0d 2f 00 00 74 90 01 01 81 bd 90 01 02 ff ff 0c 2f 00 00 74 90 01 01 81 bd 90 01 02 ff ff 05 2f 00 00 74 90 01 01 81 bd 90 01 02 ff ff 06 2f 00 00 74 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}