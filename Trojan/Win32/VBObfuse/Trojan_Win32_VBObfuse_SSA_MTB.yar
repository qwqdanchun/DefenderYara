
rule Trojan_Win32_VBObfuse_SSA_MTB{
	meta:
		description = "Trojan:Win32/VBObfuse.SSA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 00 70 00 57 00 72 00 4e 00 43 00 36 00 4d 00 43 00 54 00 72 00 78 00 62 00 56 00 70 00 4d 00 6d 00 5a 00 49 00 42 00 52 00 47 00 37 00 34 00 47 00 59 00 6e 00 38 00 39 00 } //01 00  IpWrNC6MCTrxbVpMmZIBRG74GYn89
		$a_01_1 = {68 00 58 00 63 00 42 00 67 00 36 00 49 00 71 00 31 00 37 00 36 00 } //01 00  hXcBg6Iq176
		$a_01_2 = {4e 00 63 00 32 00 56 00 49 00 52 00 33 00 58 00 76 00 5a 00 6b 00 70 00 42 00 49 00 76 00 37 00 58 00 6d 00 46 00 48 00 6f 00 50 00 37 00 58 00 59 00 67 00 78 00 4b 00 49 00 56 00 64 00 32 00 33 00 30 00 } //01 00  Nc2VIR3XvZkpBIv7XmFHoP7XYgxKIVd230
		$a_01_3 = {44 00 31 00 6b 00 64 00 44 00 53 00 79 00 72 00 70 00 69 00 62 00 36 00 36 00 31 00 30 00 38 00 } //01 00  D1kdDSyrpib66108
		$a_01_4 = {45 00 53 00 68 00 64 00 47 00 72 00 4d 00 6d 00 78 00 64 00 4f 00 41 00 65 00 70 00 4a 00 44 00 30 00 41 00 55 00 38 00 79 00 31 00 45 00 35 00 72 00 6a 00 39 00 45 00 4f 00 6b 00 57 00 35 00 34 00 35 00 } //01 00  EShdGrMmxdOAepJD0AU8y1E5rj9EOkW545
		$a_01_5 = {4e 00 59 00 4d 00 33 00 33 00 50 00 45 00 71 00 6a 00 69 00 50 00 6e 00 63 00 75 00 4f 00 30 00 52 00 62 00 34 00 72 00 61 00 46 00 41 00 6a 00 7a 00 4c 00 42 00 73 00 4f 00 69 00 44 00 54 00 39 00 73 00 4a 00 31 00 4d 00 31 00 33 00 30 00 } //00 00  NYM33PEqjiPncuO0Rb4raFAjzLBsOiDT9sJ1M130
	condition:
		any of ($a_*)
 
}