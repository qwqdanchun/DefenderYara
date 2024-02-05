
rule TrojanDownloader_Win64_VaporRage_D_dha{
	meta:
		description = "TrojanDownloader:Win64/VaporRage.D!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 07 00 00 01 00 "
		
	strings :
		$a_03_0 = {48 31 e0 48 90 02 24 0f be 90 01 04 00 83 f0 90 01 01 66 89 90 01 01 66 89 90 01 03 0f be 90 01 04 00 83 f0 90 01 01 66 89 90 01 01 66 89 90 01 03 0f be 90 01 04 00 83 f0 90 01 01 66 89 90 01 01 66 89 90 01 03 0f be 90 01 04 00 90 00 } //01 00 
		$a_03_1 = {48 31 e0 48 90 02 24 0f be 90 01 04 00 83 f0 90 01 01 88 90 01 01 88 90 01 03 0f be 90 01 04 00 83 f0 90 01 01 88 90 01 01 88 90 01 03 0f be 90 01 04 00 83 f0 90 01 01 88 90 01 01 88 90 01 03 0f be 90 01 04 00 90 00 } //01 00 
		$a_03_2 = {48 31 e0 48 90 01 05 00 00 90 02 40 0f be 90 01 04 00 83 f0 90 01 01 88 90 01 01 88 90 01 04 00 00 0f be 90 01 04 00 83 f0 90 01 01 88 90 01 01 88 90 01 04 00 00 0f be 90 01 04 00 83 f0 90 01 01 88 90 01 01 88 90 01 04 00 00 0f be 90 01 04 00 90 00 } //01 00 
		$a_03_3 = {49 31 e2 4c 89 90 01 04 00 00 90 02 50 0f be 90 01 04 00 83 f0 90 01 01 88 90 01 01 88 90 01 04 00 00 0f be 90 01 04 00 83 f0 90 01 01 88 90 01 01 88 90 01 04 00 00 0f be 90 01 04 00 90 00 } //01 00 
		$a_03_4 = {48 31 e7 48 90 01 05 00 00 44 89 db 81 e3 90 01 04 89 9c 90 01 03 00 00 8b 9c 90 01 03 00 00 44 89 90 01 01 81 e5 90 01 04 89 ac 90 01 03 00 00 8b ac 90 01 03 00 00 45 89 90 01 01 41 90 01 06 44 89 b4 90 01 03 00 00 44 8b b4 90 01 03 00 00 41 c1 e6 90 01 01 44 89 b4 90 01 03 00 00 03 ac 24 90 01 02 00 00 90 00 } //01 00 
		$a_03_5 = {48 31 e7 48 90 01 05 00 00 90 02 60 0f be 90 01 04 00 83 f0 90 01 01 88 90 01 01 88 8c 90 01 03 00 00 0f be 90 01 04 00 83 f0 90 01 01 88 90 01 01 88 8c 90 01 03 00 00 0f be 90 01 04 00 83 f0 90 01 01 88 90 01 01 88 8c 90 01 03 00 00 90 00 } //01 00 
		$a_03_6 = {48 31 e6 48 89 90 01 04 00 00 90 02 60 0f be 90 01 04 00 83 f0 90 01 01 88 90 01 01 88 8c 90 01 03 00 00 0f be 90 01 04 00 83 f0 90 01 01 88 90 01 01 88 8c 90 01 03 00 00 0f be 90 01 04 00 83 f0 90 01 01 88 90 01 01 88 8c 90 01 03 00 00 0f be 90 01 04 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}