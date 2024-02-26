
rule Trojan_BAT_AgentTesla_A_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {0a 06 18 5b 8d 90 01 04 0b 16 0c 2b 1a 00 07 08 18 5b 02 08 18 6f 90 01 01 00 00 0a 1f 10 28 90 01 01 00 00 0a 9c 00 08 18 58 0c 08 06 fe 04 0d 09 2d de 07 13 04 2b 00 11 04 2a 90 00 } //01 00 
		$a_01_1 = {42 61 69 54 61 70 54 68 69 65 74 4b 65 46 6f 72 6d 2e 66 72 6d 42 61 69 31 2e 72 65 73 6f 75 72 63 65 73 } //00 00  BaiTapThietKeForm.frmBai1.resources
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_A_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {43 6f 6d 70 75 74 65 4d 61 74 72 69 78 } //01 00  ComputeMatrix
		$a_00_1 = {4d 61 74 72 69 78 44 61 74 61 } //01 00  MatrixData
		$a_00_2 = {4d 61 74 72 69 78 53 65 70 61 72 61 74 69 6f 6e } //01 00  MatrixSeparation
		$a_00_3 = {72 65 70 6c 61 63 65 58 } //01 00  replaceX
		$a_00_4 = {47 65 74 44 65 63 6f 64 65 64 } //01 00  GetDecoded
		$a_00_5 = {42 61 73 65 36 34 44 65 63 6f 64 65 72 } //01 00  Base64Decoder
		$a_00_6 = {41 48 55 48 44 } //03 00  AHUHD
		$a_01_7 = {28 3b 00 00 06 0a 06 28 64 00 00 0a 6f 65 00 00 0a 17 9a 0b 02 07 28 3a 00 00 06 00 16 28 66 00 00 0a 00 16 0c 2b 00 08 2a } //00 00 
		$a_00_8 = {78 ee 00 00 05 00 } //05 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_A_MTB_3{
	meta:
		description = "Trojan:BAT/AgentTesla.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {4a 00 56 00 4e 00 4a 00 41 00 41 00 41 00 44 00 41 00 41 00 41 00 41 00 41 00 42 00 41 00 41 00 41 00 41 00 41 00 50 00 37 00 37 00 59 00 41 00 41 00 43 00 34 00 41 00 41 00 41 } //01 00 
		$a_01_1 = {41 00 47 00 42 00 51 00 56 00 54 00 51 00 47 00 49 00 44 00 37 00 59 00 41 00 52 00 47 00 42 00 41 00 52 00 41 00 51 00 57 00 42 00 4f 00 41 00 41 00 43 00 50 00 4d 00 41 00 51 00 41 00 41 00 41 00 45 00 43 00 35 } //01 00 
		$a_01_2 = {41 00 41 00 41 00 41 00 45 00 51 00 41 00 41 00 41 00 41 00 59 00 41 00 41 00 41 00 41 00 42 00 4f 00 44 00 53 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 } //01 00 
		$a_01_3 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //01 00  InvokeMember
		$a_01_4 = {47 65 74 54 79 70 65 73 } //00 00  GetTypes
	condition:
		any of ($a_*)
 
}