
rule TrojanSpy_Win32_Bhoban_A{
	meta:
		description = "TrojanSpy:Win32/Bhoban.A,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0a 00 07 00 00 08 00 "
		
	strings :
		$a_01_0 = {35 00 44 00 34 00 32 00 34 00 31 00 34 00 35 00 34 00 36 00 30 00 45 00 31 00 41 00 31 00 39 00 35 00 34 00 35 00 } //04 00  5D424145460E1A19545
		$a_01_1 = {31 00 42 00 35 00 45 00 35 00 31 00 35 00 33 00 34 00 37 00 35 00 31 00 35 00 30 00 31 00 38 00 35 00 43 00 35 00 42 00 } //02 00  1B5E5153475150185C5B
		$a_01_2 = {35 00 30 00 34 00 32 00 31 00 35 00 37 00 30 00 34 00 42 00 34 00 38 00 35 00 44 00 35 00 39 00 34 00 41 00 35 00 44 00 34 00 31 00 36 00 41 00 36 00 36 00 35 00 30 00 34 00 36 00 34 00 37 00 35 00 34 00 34 00 37 00 } //02 00  504215704B485D594A5D416A665046475447
		$a_01_3 = {36 00 36 00 35 00 45 00 35 00 30 00 35 00 39 00 35 00 39 00 31 00 34 00 37 00 31 00 35 00 39 00 35 00 36 00 37 00 41 00 35 00 31 00 35 00 32 00 35 00 34 00 35 00 35 00 34 00 43 00 31 00 38 00 36 00 35 00 35 00 43 00 35 00 30 00 34 00 32 00 } //02 00  665E505959147159567A515254554C18655C5042
		$a_01_4 = {36 00 32 00 37 00 42 00 36 00 41 00 37 00 44 00 36 00 31 00 37 00 39 00 37 00 39 00 36 00 39 00 37 00 32 00 37 00 30 00 36 00 37 00 37 00 37 00 37 00 33 00 37 00 43 00 37 00 44 00 37 00 42 00 36 00 37 00 } //02 00  627B6A7D6179796972706777737C7D7B67
		$a_01_5 = {37 00 44 00 37 00 44 00 37 00 30 00 36 00 43 00 36 00 41 00 37 00 38 00 37 00 41 00 37 00 35 00 37 00 34 00 37 00 39 00 36 00 43 00 37 00 35 00 37 00 30 00 37 00 35 00 37 00 30 00 37 00 31 00 37 00 44 00 37 00 30 00 36 00 39 00 36 00 36 00 } //02 00  7D7D706C6A787A7574796C75707570717D706966
		$a_01_6 = {31 00 41 00 34 00 32 00 34 00 37 00 35 00 34 00 34 00 43 00 30 00 36 00 31 00 42 00 34 00 32 00 34 00 44 00 34 00 31 00 } //00 00  1A4247544C061B424D41
	condition:
		any of ($a_*)
 
}