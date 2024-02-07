
rule Trojan_BAT_AmsiBypass_NE_MTB{
	meta:
		description = "Trojan:BAT/AmsiBypass.NE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {91 11 04 11 04 07 95 11 04 08 95 58 20 ff 00 00 00 5f 95 61 28 90 01 01 00 00 0a 9c 11 06 17 58 13 06 90 00 } //01 00 
		$a_01_1 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 4f 00 70 00 65 00 72 00 61 00 74 00 69 00 6e 00 67 00 53 00 79 00 73 00 74 00 65 00 6d 00 } //01 00  SELECT * FROM Win32_OperatingSystem
		$a_01_2 = {54 00 30 00 73 00 3d 00 } //01 00  T0s=
		$a_01_3 = {57 00 56 00 63 00 78 00 65 00 6d 00 46 00 54 00 4e 00 57 00 74 00 69 00 52 00 33 00 63 00 39 00 } //01 00  WVcxemFTNWtiR3c9
		$a_01_4 = {55 00 56 00 63 00 78 00 65 00 6d 00 46 00 57 00 54 00 6d 00 70 00 5a 00 56 00 7a 00 56 00 44 00 5a 00 46 00 64 00 61 00 62 00 56 00 70 00 59 00 53 00 54 00 30 00 3d 00 } //00 00  UVcxemFWTmpZVzVDZFdabVpYST0=
	condition:
		any of ($a_*)
 
}