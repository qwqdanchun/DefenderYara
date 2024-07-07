
rule Spammer_Win32_TMailer_A{
	meta:
		description = "Spammer:Win32/TMailer.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {35 00 38 00 32 00 38 00 32 00 32 00 40 00 71 00 71 00 2e 00 63 00 6f 00 6d 00 } //1 582822@qq.com
		$a_03_1 = {5c 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 5c 00 52 00 75 00 6e 00 5c 00 90 02 28 2f 00 71 00 71 00 2e 00 70 00 68 00 70 00 3f 00 71 00 69 00 64 00 3d 00 90 00 } //1
		$a_03_2 = {2f 00 6d 00 61 00 69 00 6c 00 2f 00 90 02 08 2e 00 74 00 78 00 74 00 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}