
rule Trojan_Win32_Autophyte_K_dha{
	meta:
		description = "Trojan:Win32/Autophyte.K!dha,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 22 00 00 0a 00 "
		
	strings :
		$a_03_0 = {8a 01 3c 62 7c 90 01 01 3c 79 7f 90 01 01 3c 69 7c 90 01 01 3c 70 7f 90 01 01 04 09 eb 90 01 01 3c 72 7c 90 01 01 2c 09 88 01 8a 41 01 41 84 c0 75 90 00 } //0a 00 
		$a_03_1 = {41 0f b6 03 3c 62 7c 90 01 01 3c 79 7f 90 01 01 3c 69 7c 90 01 01 3c 70 7f 90 01 01 04 09 eb 90 01 01 3c 72 7c 90 01 01 2c 09 41 88 03 49 ff c3 41 80 3b 00 75 90 00 } //01 00 
		$a_01_2 = {57 53 41 53 6b 61 69 6b 6c 79 } //01 00  WSASkaikly
		$a_01_3 = {47 65 6b 44 69 72 6d 65 54 70 79 65 41 } //01 00  GekDirmeTpyeA
		$a_01_4 = {56 72 69 6b 6c 61 75 51 6c 65 69 70 45 6f } //01 00  VriklauQleipEo
		$a_01_5 = {47 65 6b 4d 78 64 6c 75 65 48 61 77 64 75 65 41 } //01 00  GekMxdlueHawdueA
		$a_01_6 = {46 69 76 6e 4e 6d 63 67 46 69 78 6d 41 } //01 00  FivnNmcgFixmA
		$a_01_7 = {47 65 6b 43 78 76 79 6c 6b 65 69 4e 61 76 65 41 } //01 00  GekCxvylkeiNaveA
		$a_01_8 = {57 69 72 6b 65 50 69 78 63 65 6a 6a 78 69 4d 65 76 78 69 70 } //01 00  WirkePixcejjxiMevxip
		$a_01_9 = {56 72 69 6b 6c 61 75 50 69 78 6b 65 63 6b 45 6f } //01 00  VriklauPixkeckEo
		$a_01_10 = {46 69 65 65 4c 72 62 69 61 69 70 } //01 00  FieeLrbiaip
		$a_01_11 = {54 65 69 76 72 77 61 6b 65 50 69 78 63 65 6a 6a } //01 00  TeivrwakePixcejj
		$a_01_12 = {43 69 65 61 6b 65 46 72 75 65 41 } //01 00  CieakeFrueA
		$a_01_13 = {4f 79 65 77 50 69 78 63 65 6a 6a } //01 00  OyewPixcejj
		$a_01_14 = {47 65 6b 4c 78 67 72 63 61 75 44 69 72 6d 65 6a } //01 00  GekLxgrcauDirmej
		$a_01_15 = {47 65 6b 43 6c 69 69 65 77 6b 50 69 78 63 65 6a 6a } //01 00  GekCliiewkPixcejj
		$a_01_16 = {47 65 6b 53 70 6a 6b 65 76 44 72 69 65 63 6b 78 69 70 } //01 00  GekSpjkevDrieckxip
		$a_01_17 = {47 65 6b 4c 78 63 61 75 54 72 76 65 } //01 00  GekLxcauTrve
		$a_01_18 = {43 69 65 61 6b 65 50 69 78 63 65 6a 6a 41 } //01 00  CieakePixcejjA
		$a_01_19 = {43 69 65 61 6b 65 54 78 78 75 68 65 75 79 33 32 53 77 61 79 6a 68 78 6b } //01 00  CieakeTxxuheuy32Swayjhxk
		$a_01_20 = {53 65 6b 46 72 75 65 50 78 72 77 6b 65 69 } //01 00  SekFruePxrwkei
		$a_01_21 = {52 65 61 64 50 69 78 63 65 6a 6a 4d 65 76 78 69 70 } //01 00  ReadPixcejjMevxip
		$a_01_22 = {4d 61 79 56 72 65 6e 4f 66 46 72 75 65 } //01 00  MayVrenOfFrue
		$a_01_23 = {47 65 6b 4d 78 64 6c 75 65 46 72 75 65 4e 61 76 65 41 } //01 00  GekMxdlueFrueNaveA
		$a_01_24 = {57 69 72 6b 65 46 72 75 65 } //01 00  WirkeFrue
		$a_01_25 = {54 65 69 76 72 77 61 6b 65 54 68 69 65 61 64 } //01 00  TeivrwakeThiead
		$a_01_26 = {4c 78 61 64 4c 72 62 69 61 69 70 41 } //01 00  LxadLrbiaipA
		$a_01_27 = {47 65 6b 54 65 76 79 46 72 75 65 4e 61 76 65 41 } //01 00  GekTevyFrueNaveA
		$a_01_28 = {47 65 6b 46 72 75 65 53 72 7a 65 } //01 00  GekFrueSrze
		$a_01_29 = {52 65 61 64 46 72 75 65 } //01 00  ReadFrue
		$a_01_30 = {43 69 65 61 6b 65 54 68 69 65 61 64 } //01 00  CieakeThiead
		$a_01_31 = {46 72 77 64 46 72 69 6a 6b 46 72 75 65 41 } //01 00  FrwdFrijkFrueA
		$a_01_32 = {57 72 77 45 6f 65 63 } //01 00  WrwEoec
		$a_01_33 = {4d 78 64 6c 75 65 33 32 46 72 69 6a 6b } //00 00  Mxdlue32Frijk
	condition:
		any of ($a_*)
 
}