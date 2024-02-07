
rule MonitoringTool_AndroidOS_SpyMaster_A_MTB{
	meta:
		description = "MonitoringTool:AndroidOS/SpyMaster.A!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,06 00 06 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 4f 4d 41 49 4e 5f 53 50 59 } //01 00  DOMAIN_SPY
		$a_01_1 = {75 72 6c 74 72 61 63 6b 69 6e 67 2e 70 68 70 } //01 00  urltracking.php
		$a_01_2 = {73 70 79 6d 61 73 74 65 72 70 72 6f 2e 63 6f 6d } //01 00  spymasterpro.com
		$a_01_3 = {70 68 6f 74 6f 74 72 61 63 6b 69 6e 67 2e 70 68 70 } //01 00  phototracking.php
		$a_01_4 = {73 6d 73 74 72 61 63 6b 69 6e 67 2e 70 68 70 } //01 00  smstracking.php
		$a_01_5 = {53 70 79 20 61 70 70 } //01 00  Spy app
		$a_01_6 = {73 70 79 4d 6f 62 69 6c 65 2f 75 70 6c 6f 61 64 2e 70 68 70 } //00 00  spyMobile/upload.php
	condition:
		any of ($a_*)
 
}