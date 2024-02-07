
rule Trojan_BAT_Remcos_MBBK_MTB{
	meta:
		description = "Trojan:BAT/Remcos.MBBK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {6b 66 64 73 73 66 64 66 73 67 66 68 00 66 73 73 6a 66 73 66 66 64 66 67 00 73 6a 66 61 64 } //01 00  晫獤晳晤杳桦昀獳晪晳摦杦猀晪摡
		$a_01_1 = {06 07 08 09 02 03 28 25 01 00 06 fe 1a } //01 00 
		$a_01_2 = {6b 66 64 73 73 66 64 66 73 67 66 68 } //01 00  kfdssfdfsgfh
		$a_01_3 = {66 73 73 6a 66 73 66 66 64 66 67 } //01 00  fssjfsffdfg
		$a_01_4 = {77 73 73 66 66 73 73 64 76 } //01 00  wssffssdv
		$a_01_5 = {52 66 63 32 38 39 38 44 65 72 69 76 65 42 79 74 65 73 } //00 00  Rfc2898DeriveBytes
	condition:
		any of ($a_*)
 
}