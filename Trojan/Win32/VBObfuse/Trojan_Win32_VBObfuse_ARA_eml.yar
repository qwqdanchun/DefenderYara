
rule Trojan_Win32_VBObfuse_ARA_eml{
	meta:
		description = "Trojan:Win32/VBObfuse.ARA!eml,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 02 00 "
		
	strings :
		$a_01_0 = {51 00 48 00 70 00 47 00 31 00 63 00 30 00 4e 00 68 00 59 00 74 00 70 00 47 00 66 00 6c 00 59 00 49 00 67 00 64 00 4b 00 70 00 72 00 61 00 42 00 56 00 51 00 6d 00 32 00 33 00 31 00 } //05 00 
		$a_01_1 = {61 61 61 5f 54 6f 75 63 68 4d 65 4e 6f 74 5f 2e 74 78 74 } //05 00 
		$a_00_2 = {46 00 52 00 59 00 45 00 64 00 2e 00 65 00 78 00 65 00 } //02 00 
		$a_00_3 = {46 00 49 00 4c 00 4c 00 45 00 72 00 4d 00 61 00 6c 00 6c 00 } //01 00 
		$a_00_4 = {67 00 41 00 54 00 6c 00 66 00 6f 00 70 00 63 00 45 00 78 00 39 00 45 00 7a 00 67 00 4a 00 34 00 35 00 } //03 00 
		$a_00_5 = {46 00 31 00 66 00 70 00 6a 00 42 00 64 00 7a 00 56 00 4a 00 37 00 33 00 33 00 } //03 00 
		$a_00_6 = {4f 00 6b 00 5a 00 38 00 6b 00 31 00 75 00 61 00 55 00 77 00 38 00 36 00 } //00 00 
	condition:
		any of ($a_*)
 
}