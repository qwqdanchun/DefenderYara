
rule Trojan_BAT_Stealer_MVF_MTB{
	meta:
		description = "Trojan:BAT/Stealer.MVF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 02 00 "
		
	strings :
		$a_00_0 = {43 69 6e 6f 73 68 69 } //02 00  Cinoshi
		$a_00_1 = {43 6f 63 6b 79 47 72 61 62 62 65 72 } //02 00  CockyGrabber
		$a_00_2 = {43 43 5f 4e 75 6d 62 65 72 44 65 63 72 79 70 74 65 64 } //01 00  CC_NumberDecrypted
		$a_00_3 = {47 65 74 42 6f 6f 6b 6d 61 72 6b 73 } //01 00  GetBookmarks
		$a_01_4 = {6d 00 6f 00 7a 00 5f 00 63 00 6f 00 6f 00 6b 00 69 00 65 00 73 00 } //01 00  moz_cookies
		$a_00_5 = {47 65 74 4c 6f 67 69 6e 73 42 79 } //00 00  GetLoginsBy
	condition:
		any of ($a_*)
 
}