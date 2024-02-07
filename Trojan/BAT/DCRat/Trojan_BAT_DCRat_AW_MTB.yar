
rule Trojan_BAT_DCRat_AW_MTB{
	meta:
		description = "Trojan:BAT/DCRat.AW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 05 00 00 03 00 "
		
	strings :
		$a_00_0 = {01 57 ff 03 3e 09 1f 00 00 00 00 00 00 00 00 00 00 01 00 00 00 31 01 00 00 31 01 00 00 c9 04 00 00 46 0f } //03 00 
		$a_01_1 = {44 69 72 65 63 74 6f 72 79 53 65 70 61 72 61 74 6f 72 43 68 61 72 } //03 00  DirectorySeparatorChar
		$a_01_2 = {53 79 73 74 65 6d 2e 54 65 78 74 2e 52 65 67 75 6c 61 72 45 78 70 72 65 73 73 69 6f 6e 73 } //03 00  System.Text.RegularExpressions
		$a_01_3 = {52 66 63 32 38 39 38 44 65 72 69 76 65 42 79 74 65 73 } //03 00  Rfc2898DeriveBytes
		$a_00_4 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 32 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 31 00 7d 00 } //00 00  {11111-22222-20001-00001}
	condition:
		any of ($a_*)
 
}