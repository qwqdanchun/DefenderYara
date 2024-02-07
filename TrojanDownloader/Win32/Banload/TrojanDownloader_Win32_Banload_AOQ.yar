
rule TrojanDownloader_Win32_Banload_AOQ{
	meta:
		description = "TrojanDownloader:Win32/Banload.AOQ,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 00 6f 00 70 00 73 00 68 00 6f 00 77 00 32 00 30 00 31 00 32 00 2e 00 63 00 6f 00 6d 00 } //01 00  topshow2012.com
		$a_01_1 = {68 00 74 00 70 00 2e 00 74 00 78 00 74 00 00 00 } //01 00 
		$a_01_2 = {5c 00 74 00 70 00 70 00 2e 00 64 00 61 00 74 00 } //01 00  \tpp.dat
		$a_01_3 = {5c 00 6d 00 73 00 67 00 73 00 2e 00 63 00 70 00 6c 00 } //01 00  \msgs.cpl
		$a_01_4 = {44 00 45 00 33 00 39 00 38 00 32 00 35 00 41 00 2d 00 43 00 42 00 30 00 43 00 2d 00 34 00 45 00 42 00 35 00 2d 00 42 00 41 00 36 00 46 00 2d 00 45 00 38 00 35 00 35 00 35 00 41 00 44 00 38 00 36 00 38 00 44 00 30 00 } //00 00  DE39825A-CB0C-4EB5-BA6F-E8555AD868D0
	condition:
		any of ($a_*)
 
}