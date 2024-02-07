
rule Backdoor_Win32_PcClient_DS{
	meta:
		description = "Backdoor:Win32/PcClient.DS,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 07 00 00 06 00 "
		
	strings :
		$a_03_0 = {47 6c 6f 62 c7 05 90 01 03 10 61 6c 5c 25 c7 05 90 01 03 10 73 2d 6b 65 c7 05 90 01 03 10 79 2d 6d 65 c7 05 90 01 03 10 74 75 78 00 90 00 } //02 00 
		$a_02_1 = {6d 79 70 61 72 65 6e 74 74 68 72 65 61 64 69 64 3d 25 64 3b 90 01 04 69 64 3d 25 73 90 00 } //02 00 
		$a_02_2 = {47 6c 6f 62 61 6c 5c 25 73 2d 90 01 03 2d 65 76 65 6e 74 90 00 } //01 00 
		$a_01_3 = {6d 79 73 65 72 76 65 72 70 6f 72 74 } //01 00  myserverport
		$a_01_4 = {6d 79 74 68 72 65 61 64 69 64 } //01 00  mythreadid
		$a_03_5 = {25 30 38 78 2e 74 6d 70 90 02 10 25 73 5c 2a 2e 2a 90 00 } //01 00 
		$a_01_6 = {25 30 32 64 25 30 34 64 25 30 32 64 2f 25 30 32 64 25 30 32 64 25 30 32 64 2f 25 64 2e 6a 73 70 } //00 00  %02d%04d%02d/%02d%02d%02d/%d.jsp
	condition:
		any of ($a_*)
 
}