
rule Trojan_Win32_Tarifarch_S{
	meta:
		description = "Trojan:Win32/Tarifarch.S,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 48 52 30 63 44 6f 76 4c } //01 00  aHR0cDovL
		$a_01_1 = {39 31 38 31 30 37 30 30 } //01 00  91810700
		$a_01_2 = {6c 53 75 62 73 63 72 69 70 74 69 6f 6e 53 74 65 70 33 } //01 00  lSubscriptionStep3
		$a_01_3 = {65 53 75 62 43 66 43 6f 64 65 4b 65 79 50 72 65 73 73 } //01 00  eSubCfCodeKeyPress
		$a_00_4 = {64 6f 75 70 64 61 74 65 } //01 00  doupdate
		$a_00_5 = {74 62 69 6c 6c 69 6e 67 69 6e 66 6f 72 6d 61 74 69 6f 6e } //01 00  tbillinginformation
		$a_00_6 = {62 74 6e 73 75 62 73 63 72 69 70 74 69 6f 6e 63 68 65 63 6b 63 6f 64 65 } //01 00  btnsubscriptioncheckcode
		$a_00_7 = {52 55 53 53 49 41 4e 5f 43 48 41 52 53 45 54 } //01 00  RUSSIAN_CHARSET
		$a_00_8 = {63 6f 6e 66 69 72 6d 61 74 69 6f 6e 43 6f 64 65 } //00 00  confirmationCode
	condition:
		any of ($a_*)
 
}