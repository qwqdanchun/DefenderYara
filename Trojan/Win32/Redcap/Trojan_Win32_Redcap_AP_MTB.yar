
rule Trojan_Win32_Redcap_AP_MTB{
	meta:
		description = "Trojan:Win32/Redcap.AP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 06 00 00 03 00 "
		
	strings :
		$a_01_0 = {35 35 35 00 30 30 30 00 33 33 33 11 33 33 33 11 2f } //03 00 
		$a_01_1 = {33 33 33 cd 33 33 33 f0 33 33 33 34 33 33 33 00 32 32 32 00 34 34 } //01 00 
		$a_01_2 = {73 00 6f 00 6d 00 65 00 4f 00 74 00 68 00 65 00 72 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 3d 00 53 00 6f 00 6d 00 65 00 4f 00 74 00 68 00 65 00 72 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 2e 00 65 00 78 00 65 00 } //01 00  someOtherProgram=SomeOtherProgram.exe
		$a_01_3 = {73 00 65 00 61 00 72 00 63 00 68 00 62 00 69 00 6e 00 2e 00 6f 00 72 00 67 00 } //01 00  searchbin.org
		$a_01_4 = {64 00 61 00 74 00 61 00 2e 00 62 00 69 00 6e 00 } //01 00  data.bin
		$a_01_5 = {53 00 65 00 6e 00 64 00 6b 00 65 00 79 00 73 00 } //00 00  Sendkeys
	condition:
		any of ($a_*)
 
}