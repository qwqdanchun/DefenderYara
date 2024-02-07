
rule Backdoor_Win32_PcClient_gen_G{
	meta:
		description = "Backdoor:Win32/PcClient.gen!G,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {5b 25 30 32 64 2d 25 30 34 64 2d 25 30 32 64 20 25 30 32 64 3a 25 30 32 64 3a 25 30 32 64 5d } //02 00  [%02d-%04d-%02d %02d:%02d:%02d]
		$a_00_1 = {25 30 32 64 25 30 34 64 25 30 32 64 2f 25 30 32 64 25 30 32 64 25 30 32 64 2f 25 64 2e 6a 73 70 } //01 00  %02d%04d%02d/%02d%02d%02d/%d.jsp
		$a_00_2 = {47 6c 6f 62 61 6c 5c 25 73 } //01 00  Global\%s
		$a_00_3 = {6d 79 70 61 72 65 6e 74 74 68 72 65 61 64 69 64 3d 25 64 3b 72 67 75 6b 69 64 3d 25 73 } //01 00  myparentthreadid=%d;rgukid=%s
		$a_00_4 = {53 59 53 54 45 4d 5c 43 6f 6e 74 72 6f 6c 53 65 74 30 30 31 5c 53 65 72 76 69 63 65 73 5c } //01 00  SYSTEM\ControlSet001\Services\
		$a_02_5 = {50 4f 53 54 90 02 10 68 74 74 70 3a 2f 2f 25 73 3a 25 64 2f 25 73 90 00 } //01 00 
		$a_02_6 = {68 74 74 70 3a 2f 2f 25 73 90 02 10 25 64 2e 65 78 65 90 00 } //01 00 
		$a_00_7 = {55 73 65 72 2d 41 67 65 6e 74 3a 20 4d 6f 7a 69 6c 6c 61 2f 34 2e 30 } //00 00  User-Agent: Mozilla/4.0
	condition:
		any of ($a_*)
 
}