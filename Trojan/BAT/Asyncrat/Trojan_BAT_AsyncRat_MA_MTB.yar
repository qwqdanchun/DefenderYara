
rule Trojan_BAT_AsyncRat_MA_MTB{
	meta:
		description = "Trojan:BAT/AsyncRat.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_81_0 = {67 6e 69 72 74 53 34 36 65 73 61 42 6d 6f 72 46 } //01 00  gnirtS46esaBmorF
		$a_81_1 = {74 72 65 76 6e 6f 43 2e 6d 65 74 73 79 53 } //01 00  trevnoC.metsyS
		$a_81_2 = {59 58 5a 31 32 33 34 35 36 37 38 39 30 } //01 00  YXZ1234567890
		$a_81_3 = {56 69 64 79 61 47 61 6d 65 } //01 00  VidyaGame
		$a_81_4 = {53 74 72 52 65 76 65 72 73 65 } //01 00  StrReverse
		$a_81_5 = {49 2d 2d 6e 2d 2d 76 2d 2d 6f 2d 2d 6b 2d 2d 65 } //01 00  I--n--v--o--k--e
		$a_81_6 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_7 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_8 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //00 00  CreateInstance
	condition:
		any of ($a_*)
 
}