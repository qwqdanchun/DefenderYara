
rule Trojan_BAT_FakeSupport_MA_MTB{
	meta:
		description = "Trojan:BAT/FakeSupport.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_01_1 = {53 00 76 00 68 00 6f 00 73 00 74 00 73 00 65 00 72 00 76 00 65 00 72 00 } //01 00  Svhostserver
		$a_01_2 = {67 00 6e 00 63 00 6d 00 64 00 73 00 74 00 6f 00 72 00 65 00 2e 00 63 00 6f 00 6d 00 2f 00 61 00 70 00 69 00 5f 00 77 00 69 00 74 00 68 00 6f 00 75 00 74 00 6d 00 61 00 63 00 } //01 00  gncmdstore.com/api_withoutmac
		$a_01_3 = {47 65 74 73 75 70 72 65 6d 6f 49 64 } //01 00  GetsupremoId
		$a_01_4 = {52 65 76 65 72 73 65 } //01 00  Reverse
		$a_01_5 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 57 00 6f 00 77 00 36 00 34 00 33 00 32 00 4e 00 6f 00 64 00 65 00 5c 00 53 00 75 00 70 00 72 00 65 00 6d 00 6f 00 } //01 00  SOFTWARE\Wow6432Node\Supremo
		$a_01_6 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //00 00  DebuggableAttribute
	condition:
		any of ($a_*)
 
}