
rule Trojan_Win32_VBObfuse_SSV_MTB{
	meta:
		description = "Trojan:Win32/VBObfuse.SSV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 0c 24 83 c1 01 c3 90 0a 30 00 66 0f 6e 90 02 08 81 34 08 90 00 } //01 00 
		$a_03_1 = {e8 3b 00 00 00 66 0f 6e 90 02 03 66 0f 6e 90 02 17 41 66 0f 6e 90 02 04 66 0f 6e 90 02 02 41 66 0f 6e 90 02 02 66 0f 6e 90 02 02 3b 8d 94 00 00 00 75 90 00 } //01 00 
		$a_01_2 = {45 00 61 00 74 00 39 00 49 00 52 00 4f 00 32 00 42 00 52 00 61 00 66 00 6f 00 6f 00 35 00 39 00 52 00 4a 00 33 00 73 00 46 00 72 00 4c 00 33 00 57 00 4a 00 52 00 36 00 59 00 65 00 4d 00 6f 00 6a 00 56 00 53 00 31 00 34 00 34 00 } //01 00  Eat9IRO2BRafoo59RJ3sFrL3WJR6YeMojVS144
		$a_01_3 = {7a 00 7a 00 43 00 33 00 54 00 34 00 53 00 39 00 63 00 7a 00 6f 00 4d 00 56 00 4d 00 4e 00 47 00 61 00 77 00 75 00 61 00 69 00 49 00 74 00 4f 00 51 00 4c 00 6a 00 38 00 31 00 } //01 00  zzC3T4S9czoMVMNGawuaiItOQLj81
		$a_01_4 = {6d 00 51 00 66 00 44 00 38 00 6a 00 47 00 59 00 6a 00 6a 00 66 00 54 00 32 00 34 00 78 00 41 00 71 00 46 00 41 00 38 00 } //00 00  mQfD8jGYjjfT24xAqFA8
	condition:
		any of ($a_*)
 
}