
rule Backdoor_Win32_Farfli_XZ_MTB{
	meta:
		description = "Backdoor:Win32/Farfli.XZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 04 00 00 0a 00 "
		
	strings :
		$a_03_0 = {8c fc ff ff 46 c6 85 90 01 04 2d c6 85 90 01 04 73 c6 85 90 01 04 65 c6 85 90 01 04 63 c6 85 90 01 04 75 c6 85 90 01 04 72 c6 85 90 00 } //0a 00 
		$a_03_1 = {84 fc ff ff 43 c6 85 90 01 04 6f c6 85 90 01 04 6d c6 85 90 01 04 6f c6 85 90 01 04 64 c6 85 90 00 } //01 00 
		$a_01_2 = {5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 25 64 25 44 2e 43 4f 4d } //01 00  \Program Files\%d%D.COM
		$a_01_3 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 } //00 00  VirtualAlloc
	condition:
		any of ($a_*)
 
}