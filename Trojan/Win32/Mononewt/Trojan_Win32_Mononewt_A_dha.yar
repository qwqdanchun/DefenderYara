
rule Trojan_Win32_Mononewt_A_dha{
	meta:
		description = "Trojan:Win32/Mononewt.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {6c 00 70 00 73 00 7a 00 56 00 65 00 72 00 62 00 3a 00 25 00 73 00 } //01 00  lpszVerb:%s
		$a_01_1 = {2f 73 65 61 72 63 68 3f 68 6c 3d 65 6e 26 71 3d 25 73 26 6d 65 74 61 3d 25 73 } //01 00  /search?hl=en&q=%s&meta=%s
		$a_01_2 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 4b 00 65 00 79 00 62 00 6f 00 61 00 72 00 64 00 5c 00 53 00 65 00 74 00 } //01 00  Software\Microsoft\Keyboard\Set
		$a_01_3 = {25 00 73 00 5c 00 63 00 6e 00 66 00 5f 00 25 00 73 00 5f 00 25 00 73 00 2e 00 74 00 78 00 74 00 } //01 00  %s\cnf_%s_%s.txt
		$a_01_4 = {5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 4d 00 65 00 64 00 69 00 61 00 20 00 50 00 6c 00 61 00 79 00 65 00 72 00 } //00 00  \Microsoft\Media Player
	condition:
		any of ($a_*)
 
}