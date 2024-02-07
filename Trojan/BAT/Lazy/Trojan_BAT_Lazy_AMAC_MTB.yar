
rule Trojan_BAT_Lazy_AMAC_MTB{
	meta:
		description = "Trojan:BAT/Lazy.AMAC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {11 05 25 4b 11 0c 11 0f 1f 0f 5f 95 61 54 11 0c 11 0f 1f 0f 5f 11 0c 11 0f 1f 0f 5f 95 11 05 25 1a 58 13 05 4b 61 90 01 05 58 9e 11 0f 17 58 13 0f 11 16 17 58 13 16 11 16 11 06 37 c1 90 00 } //01 00 
		$a_01_1 = {11 0c 11 15 11 0b 9e 11 0d 11 15 11 09 9e 11 09 1b 64 11 09 1f 1b 62 60 13 08 11 0a 19 64 11 0a 1f 1d 62 60 13 09 11 0b 1d 64 11 0b 1f 19 62 60 13 0a 11 08 1f 0b 64 11 08 1f 15 62 60 13 0b 11 15 17 58 13 15 11 15 1f 10 32 b5 } //01 00 
		$a_01_2 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //01 00  VirtualProtect
		$a_81_3 = {52 69 63 65 62 6f 79 2e 52 69 63 65 62 6f 79 } //01 00  Riceboy.Riceboy
		$a_81_4 = {74 72 61 6e 73 66 65 72 2e 73 68 2f 67 65 74 } //00 00  transfer.sh/get
	condition:
		any of ($a_*)
 
}