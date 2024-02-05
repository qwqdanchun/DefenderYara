
rule TrojanSpy_Win32_Keylogger_HE_bit{
	meta:
		description = "TrojanSpy:Win32/Keylogger.HE!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {4f 75 72 4d 6f 75 73 65 50 72 6f 63 } //01 00 
		$a_01_1 = {4f 75 72 4b 65 79 62 6f 61 72 64 50 72 6f 63 } //01 00 
		$a_01_2 = {5b 4c 65 66 74 20 43 74 72 6c 5d 5b 56 5d 5b 2f 4c 65 66 74 20 43 74 72 6c 5d } //01 00 
		$a_01_3 = {5b 52 6d 6f 75 73 65 5d 20 20 5b 2f 52 6d 6f 75 73 65 5d 20 5b 4c 6d 6f 75 73 65 5d 20 20 5b 2f 4c 6d 6f 75 73 65 5d } //01 00 
		$a_01_4 = {00 73 6d 2e 70 73 31 00 } //00 00 
	condition:
		any of ($a_*)
 
}