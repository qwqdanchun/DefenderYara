
rule Trojan_Win32_Zusy_EN_MTB{
	meta:
		description = "Trojan:Win32/Zusy.EN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {47 45 54 53 45 52 56 45 52 32 2e 30 } //01 00  GETSERVER2.0
		$a_01_1 = {41 6e 20 75 6e 73 75 70 70 6f 72 74 65 64 20 6f 70 65 72 61 74 69 6f 6e 20 77 61 73 20 61 74 74 65 6d 70 74 65 64 } //01 00  An unsupported operation was attempted
		$a_01_2 = {43 00 6f 00 6c 00 6f 00 72 00 50 00 69 00 63 00 6b 00 65 00 72 00 44 00 65 00 6d 00 6f 00 2e 00 45 00 58 00 45 00 } //01 00  ColorPickerDemo.EXE
		$a_01_3 = {43 72 65 61 74 65 54 68 72 65 61 64 } //01 00  CreateThread
		$a_01_4 = {48 72 43 67 40 62 } //00 00  HrCg@b
	condition:
		any of ($a_*)
 
}