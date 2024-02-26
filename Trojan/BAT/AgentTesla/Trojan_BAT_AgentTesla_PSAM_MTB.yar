
rule Trojan_BAT_AgentTesla_PSAM_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.PSAM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 05 00 00 05 00 "
		
	strings :
		$a_03_0 = {7e 69 01 00 04 73 b8 00 00 0a 20 1e 14 f2 c5 28 d5 00 00 06 6f 7d 00 00 0a 74 05 00 00 1b 0a 28 9c 00 00 0a 20 11 14 f2 c5 28 d5 00 00 06 6f 2d 90 01 03 1e 8d 07 00 00 01 17 73 43 90 01 03 0b 73 44 90 01 03 0c 08 07 1f 10 6f 45 90 01 03 6f 46 90 01 03 08 07 1f 10 6f 45 90 01 03 6f 47 90 01 03 08 6f 48 90 01 03 06 16 06 8e 69 6f 49 90 01 03 0d 09 8e 69 1f 10 59 8d 07 00 00 01 13 04 09 1f 10 11 04 16 09 8e 69 1f 10 59 28 1e 90 01 03 11 04 28 72 01 00 06 28 71 01 00 06 6f 4a 90 01 03 17 9a 80 68 01 00 04 02 13 05 11 05 2a 90 00 } //01 00 
		$a_01_1 = {52 66 63 32 38 39 38 44 65 72 69 76 65 42 79 74 65 73 } //01 00  Rfc2898DeriveBytes
		$a_01_2 = {49 43 72 79 70 74 6f 54 72 61 6e 73 66 6f 72 6d } //01 00  ICryptoTransform
		$a_01_3 = {53 79 6d 6d 65 74 72 69 63 41 6c 67 6f 72 69 74 68 6d } //01 00  SymmetricAlgorithm
		$a_01_4 = {52 69 6a 6e 64 61 65 6c 4d 61 6e 61 67 65 64 } //00 00  RijndaelManaged
	condition:
		any of ($a_*)
 
}