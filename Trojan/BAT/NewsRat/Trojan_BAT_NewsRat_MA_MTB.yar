
rule Trojan_BAT_NewsRat_MA_MTB{
	meta:
		description = "Trojan:BAT/NewsRat.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 05 00 00 05 00 "
		
	strings :
		$a_03_0 = {07 02 8e 69 6f 90 01 03 06 8d 18 00 00 01 0d 07 02 16 02 8e 69 09 16 6f 90 01 03 06 13 04 07 09 11 04 90 00 } //02 00 
		$a_01_1 = {43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 5c 00 44 00 61 00 74 00 61 00 5c 00 63 00 6f 00 6f 00 6b 00 69 00 65 00 73 00 5f 00 66 00 62 00 2e 00 74 00 78 00 74 00 } //02 00  C:\ProgramData\Data\cookies_fb.txt
		$a_01_2 = {43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 5c 00 44 00 61 00 74 00 61 00 5c 00 61 00 6c 00 6c 00 5f 00 61 00 63 00 63 00 6f 00 75 00 6e 00 74 00 2e 00 74 00 78 00 74 00 } //02 00  C:\ProgramData\Data\all_account.txt
		$a_01_3 = {5c 00 4e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 5c 00 43 00 6f 00 6f 00 6b 00 69 00 65 00 73 00 } //02 00  \Network\Cookies
		$a_01_4 = {5c 00 4c 00 6f 00 63 00 61 00 6c 00 5c 00 43 00 6f 00 63 00 43 00 6f 00 63 00 5c 00 42 00 72 00 6f 00 77 00 73 00 65 00 72 00 5c 00 55 00 73 00 65 00 72 00 20 00 44 00 61 00 74 00 61 00 } //00 00  \Local\CocCoc\Browser\User Data
	condition:
		any of ($a_*)
 
}