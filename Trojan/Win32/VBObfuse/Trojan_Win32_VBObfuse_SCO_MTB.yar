
rule Trojan_Win32_VBObfuse_SCO_MTB{
	meta:
		description = "Trojan:Win32/VBObfuse.SCO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {70 00 68 00 63 00 4f 00 33 00 78 00 37 00 37 00 36 00 4a 00 4d 00 46 00 36 00 32 00 63 00 4a 00 67 00 43 00 70 00 72 00 6b 00 39 00 30 00 6e 00 79 00 78 00 4d 00 76 00 62 00 30 00 32 00 31 00 35 00 } //01 00  phcO3x776JMF62cJgCprk90nyxMvb0215
		$a_01_1 = {58 00 65 00 4b 00 6a 00 47 00 35 00 69 00 43 00 38 00 54 00 4a 00 33 00 31 00 5a 00 6c 00 47 00 52 00 74 00 63 00 75 00 44 00 53 00 58 00 77 00 54 00 31 00 34 00 35 00 } //01 00  XeKjG5iC8TJ31ZlGRtcuDSXwT145
		$a_01_2 = {51 00 38 00 70 00 55 00 6b 00 79 00 56 00 6a 00 7a 00 4c 00 49 00 53 00 65 00 54 00 64 00 55 00 4c 00 43 00 64 00 43 00 52 00 30 00 6d 00 41 00 31 00 79 00 56 00 77 00 76 00 78 00 54 00 37 00 73 00 43 00 36 00 6e 00 68 00 44 00 52 00 31 00 34 00 35 00 } //01 00  Q8pUkyVjzLISeTdULCdCR0mA1yVwvxT7sC6nhDR145
		$a_01_3 = {6c 00 66 00 7a 00 63 00 73 00 39 00 35 00 } //01 00  lfzcs95
		$a_01_4 = {43 00 56 00 35 00 41 00 45 00 6e 00 69 00 73 00 47 00 79 00 65 00 79 00 59 00 65 00 52 00 30 00 56 00 49 00 77 00 4d 00 6f 00 35 00 6e 00 42 00 38 00 42 00 57 00 54 00 42 00 70 00 33 00 62 00 30 00 77 00 30 00 49 00 76 00 32 00 32 00 } //01 00  CV5AEnisGyeyYeR0VIwMo5nB8BWTBp3b0w0Iv22
		$a_01_5 = {72 00 4e 00 6f 00 6c 00 39 00 59 00 62 00 62 00 69 00 4b 00 73 00 52 00 56 00 35 00 32 00 77 00 57 00 31 00 37 00 38 00 } //00 00  rNol9YbbiKsRV52wW178
	condition:
		any of ($a_*)
 
}