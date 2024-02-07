
rule Trojan_BAT_Lazy_PSKH_MTB{
	meta:
		description = "Trojan:BAT/Lazy.PSKH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 06 00 00 04 00 "
		
	strings :
		$a_01_0 = {28 dd 01 00 06 74 a8 00 00 01 14 14 6f 74 00 00 0a 2a } //01 00 
		$a_01_1 = {6d 00 5f 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //01 00  m_password
		$a_01_2 = {53 6b 69 70 56 65 72 69 66 69 63 61 74 69 6f 6e } //01 00  SkipVerification
		$a_01_3 = {25 00 6c 00 6f 00 67 00 67 00 65 00 72 00 } //01 00  %logger
		$a_01_4 = {55 00 6b 00 7a 00 77 00 7a 00 62 00 70 00 72 00 63 00 75 00 79 00 77 00 77 00 6b 00 6d 00 73 00 65 00 73 00 6b 00 73 00 6d 00 71 00 65 00 } //01 00  Ukzwzbprcuywwkmsesksmqe
		$a_01_5 = {58 00 68 00 75 00 75 00 6e 00 6b 00 69 00 71 00 68 00 61 00 66 00 64 00 7a 00 2e 00 48 00 69 00 66 00 79 00 7a 00 69 00 65 00 77 00 6d 00 7a 00 64 00 72 00 79 00 72 00 69 00 62 00 63 00 66 00 70 00 7a 00 72 00 } //00 00  Xhuunkiqhafdz.Hifyziewmzdryribcfpzr
	condition:
		any of ($a_*)
 
}