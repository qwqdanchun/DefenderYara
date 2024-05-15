
rule Trojan_Win32_RiseProStealer_RHD_MTB{
	meta:
		description = "Trojan:Win32/RiseProStealer.RHD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 06 00 00 02 00 "
		
	strings :
		$a_03_0 = {40 00 00 e0 2e 72 73 72 63 00 00 00 90 01 c0 2e 74 61 67 67 61 6e 74 90 00 } //02 00 
		$a_03_1 = {e9 00 20 00 00 00 90 09 0a 00 eb 08 90 00 } //02 00 
		$a_01_2 = {79 6f 75 72 73 69 74 65 40 79 6f 75 72 73 69 74 65 2e 63 6f 6d 2e } //01 00  yoursite@yoursite.com.
		$a_02_3 = {50 00 72 00 6f 00 64 00 75 00 63 00 74 00 4e 00 61 00 6d 00 65 00 90 01 04 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 2e 00 4e 00 45 00 54 00 20 00 46 00 72 00 61 00 6d 00 65 00 77 00 6f 00 72 00 6b 00 90 00 } //01 00 
		$a_02_4 = {4f 00 72 00 69 00 67 00 69 00 6e 00 61 00 6c 00 46 00 69 00 6c 00 65 00 6e 00 61 00 6d 00 65 00 90 01 02 4d 00 53 00 42 00 75 00 69 00 6c 00 64 00 2e 00 65 00 78 00 65 00 90 00 } //02 00 
		$a_03_5 = {50 45 00 00 4c 01 07 90 01 11 0b 01 0e 22 00 90 01 01 10 90 01 0e 10 00 00 00 90 01 01 10 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}