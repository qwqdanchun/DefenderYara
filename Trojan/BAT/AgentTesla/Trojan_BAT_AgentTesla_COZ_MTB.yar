
rule Trojan_BAT_AgentTesla_COZ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.COZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {36 00 31 00 32 00 42 00 43 00 39 00 30 00 36 00 32 00 41 00 30 00 30 00 31 00 33 00 33 00 30 00 30 00 33 00 30 00 30 00 33 00 46 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 33 00 30 00 30 00 30 00 30 00 31 00 31 00 30 00 30 00 32 00 30 00 35 00 33 00 32 00 31 00 44 00 46 00 46 00 39 00 32 00 } //01 00  612BC9062A00133003003F0000000300001100205321DFF92
		$a_01_1 = {41 00 30 00 41 00 30 00 37 00 32 00 30 00 44 00 46 00 45 00 41 00 41 00 44 00 46 00 30 00 35 00 41 00 32 00 30 00 45 00 34 00 42 00 37 00 41 00 34 00 37 00 41 00 36 00 31 00 32 00 42 00 43 00 39 00 30 00 36 00 32 00 41 00 30 00 30 00 31 00 33 00 33 00 30 00 30 00 } //01 00  A0A0720DFEAADF05A20E4B7A47A612BC9062A0013300
		$a_01_2 = {31 00 30 00 30 00 37 00 45 00 30 00 35 00 30 00 30 00 30 00 30 00 30 00 34 00 36 00 46 00 32 00 37 00 30 00 30 00 30 00 30 00 30 00 41 00 30 00 41 00 32 00 30 00 34 00 42 00 32 00 31 00 31 00 46 00 39 00 41 00 32 00 30 00 31 00 42 00 34 00 44 00 41 00 43 00 } //01 00  1007E050000046F2700000A0A204B211F9A201B4DAC
		$a_01_3 = {47 65 74 54 79 70 65 } //01 00  GetType
		$a_01_4 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_01_5 = {54 6f 42 79 74 65 } //01 00  ToByte
		$a_01_6 = {53 75 62 73 74 72 69 6e 67 } //01 00  Substring
		$a_01_7 = {50 61 72 61 6d 58 41 72 72 61 79 } //01 00  ParamXArray
		$a_01_8 = {50 61 72 61 6d 58 47 72 6f 75 70 } //00 00  ParamXGroup
	condition:
		any of ($a_*)
 
}