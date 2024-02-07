
rule Trojan_Win32_Redline_GJ_MTB{
	meta:
		description = "Trojan:Win32/Redline.GJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 0a 00 "
		
	strings :
		$a_03_0 = {75 5c 50 72 c7 40 90 01 01 6f 67 72 61 c7 40 90 01 01 6d 73 5c 53 c7 40 90 01 01 74 61 72 74 c7 40 90 01 01 75 70 5c 6b c7 40 90 01 01 6c 53 65 72 c7 40 90 01 01 76 69 63 65 c7 40 90 01 01 2e 65 78 65 90 00 } //01 00 
		$a_03_1 = {5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2e 00 4e 00 45 00 54 00 5c 00 46 00 72 00 61 00 6d 00 65 00 77 00 6f 00 72 00 6b 00 5c 00 90 02 20 5c 00 41 00 70 00 70 00 4c 00 61 00 75 00 6e 00 63 00 68 00 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_01_2 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //00 00  VirtualProtect
	condition:
		any of ($a_*)
 
}