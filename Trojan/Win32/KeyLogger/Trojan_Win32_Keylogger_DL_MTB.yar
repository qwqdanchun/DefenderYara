
rule Trojan_Win32_Keylogger_DL_MTB{
	meta:
		description = "Trojan:Win32/Keylogger.DL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {3a 60 fe 69 00 fb ef 38 ff 60 31 b0 fe 36 06 00 68 ff 48 ff 38 ff 00 77 } //01 00 
		$a_01_1 = {28 ff 04 08 ff 0a 25 00 14 00 04 08 ff ff 36 08 20 59 04 ff 04 34 ff ff 02 32 06 00 2c ff 28 ff 00 ff 29 04 00 78 } //01 00 
		$a_01_2 = {61 00 39 00 65 00 77 00 36 00 34 00 6a 00 73 00 7a 00 6a 00 68 00 37 00 30 00 67 00 74 00 39 00 30 00 39 00 63 00 30 00 6a 00 69 00 39 00 6c 00 6e 00 32 00 62 00 6d 00 31 00 75 00 6d 00 32 00 37 00 69 00 30 00 30 00 61 00 33 00 68 00 65 00 70 00 6a 00 31 00 34 00 34 00 65 00 6d 00 74 00 68 00 74 00 } //01 00  a9ew64jszjh70gt909c0ji9ln2bm1um27i00a3hepj144emtht
		$a_01_3 = {5b 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 5d 00 } //01 00  [Passwords]
		$a_01_4 = {4c 00 6f 00 67 00 20 00 53 00 75 00 62 00 6d 00 69 00 74 00 74 00 65 00 64 00 21 00 } //00 00  Log Submitted!
	condition:
		any of ($a_*)
 
}