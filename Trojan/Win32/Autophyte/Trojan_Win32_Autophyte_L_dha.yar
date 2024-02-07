
rule Trojan_Win32_Autophyte_L_dha{
	meta:
		description = "Trojan:Win32/Autophyte.L!dha,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 21 00 00 0a 00 "
		
	strings :
		$a_00_0 = {8a 08 80 f9 62 7c 0b 80 f9 79 7f 06 b2 db 2a d1 88 10 } //01 00 
		$a_01_1 = {57 53 41 53 67 61 69 67 66 6b } //01 00  WSASgaigfk
		$a_01_2 = {47 76 67 44 69 72 65 76 54 62 6b 76 41 } //01 00  GvgDirevTbkvA
		$a_01_3 = {56 72 69 67 66 61 6f 51 66 76 69 62 45 63 } //01 00  VrigfaoQfvibEc
		$a_01_4 = {47 76 67 4d 6c 77 66 6f 76 48 61 6d 77 6f 76 41 } //01 00  GvgMlwfovHamwovA
		$a_01_5 = {46 69 6e 64 4e 65 78 74 46 69 6c 65 41 } //01 00  FindNextFileA
		$a_01_6 = {47 76 67 43 6c 6e 6b 66 67 76 69 4e 61 6e 76 41 } //01 00  GvgClnkfgviNanvA
		$a_01_7 = {57 69 72 67 76 50 69 6c 78 76 68 68 4d 76 6e 6c 69 62 } //01 00  WirgvPilxvhhMvnlib
		$a_01_8 = {56 72 69 67 66 61 6f 50 69 6c 67 76 78 67 45 63 } //01 00  VrigfaoPilgvxgEc
		$a_01_9 = {46 69 76 76 4c 72 79 69 61 69 62 } //01 00  FivvLryiaib
		$a_01_10 = {54 76 69 6e 72 6d 61 67 76 50 69 6c 78 76 68 68 } //01 00  TvinrmagvPilxvhh
		$a_01_11 = {43 69 76 61 67 76 46 72 6f 76 41 } //01 00  CivagvFrovA
		$a_01_12 = {4f 6b 76 6d 50 69 6c 78 76 68 68 } //01 00  OkvmPilxvhh
		$a_01_13 = {47 76 67 4c 6c 74 72 78 61 6f 44 69 72 65 76 68 } //01 00  GvgLltrxaoDirevh
		$a_01_14 = {47 76 67 43 66 69 69 76 6d 67 50 69 6c 78 76 68 68 } //01 00  GvgCfiivmgPilxvhh
		$a_01_15 = {47 76 67 53 62 68 67 76 6e 44 72 69 76 78 67 6c 69 62 41 } //01 00  GvgSbhgvnDrivxglibA
		$a_01_16 = {47 76 67 4c 6c 78 61 6f 54 72 6e 76 } //01 00  GvgLlxaoTrnv
		$a_01_17 = {43 69 76 61 67 76 50 69 6c 78 76 68 68 41 } //01 00  CivagvPilxvhhA
		$a_01_18 = {43 69 76 61 67 76 54 6c 6c 6f 73 76 6f 6b 33 32 53 6d 61 6b 68 73 6c 67 } //01 00  CivagvTllosvok32Smakhslg
		$a_01_19 = {53 76 67 46 72 6f 76 50 6c 72 6d 67 76 69 } //01 00  SvgFrovPlrmgvi
		$a_01_20 = {52 76 61 77 50 69 6c 78 76 68 68 4d 76 6e 6c 69 62 } //01 00  RvawPilxvhhMvnlib
		$a_01_21 = {4d 61 6b 56 72 76 64 4f 75 46 72 6f 76 } //01 00  MakVrvdOuFrov
		$a_01_22 = {47 76 67 4d 6c 77 66 6f 76 46 72 6f 76 4e 61 6e 76 41 } //01 00  GvgMlwfovFrovNanvA
		$a_01_23 = {57 69 72 67 76 46 72 6f 76 } //01 00  WirgvFrov
		$a_01_24 = {54 76 69 6e 72 6d 61 67 76 54 73 69 76 61 77 } //01 00  TvinrmagvTsivaw
		$a_01_25 = {4c 6c 61 77 4c 72 79 69 61 69 62 41 } //01 00  LlawLryiaibA
		$a_01_26 = {47 76 67 54 76 6e 6b 46 72 6f 76 4e 61 6e 76 41 } //01 00  GvgTvnkFrovNanvA
		$a_01_27 = {47 76 67 46 72 6f 76 53 72 7a 76 } //01 00  GvgFrovSrzv
		$a_01_28 = {52 76 61 77 46 72 6f 76 } //01 00  RvawFrov
		$a_01_29 = {43 69 76 61 67 76 54 73 69 76 61 77 } //01 00  CivagvTsivaw
		$a_01_30 = {46 72 6d 77 46 72 69 68 67 46 72 6f 76 41 } //01 00  FrmwFrihgFrovA
		$a_01_31 = {57 72 6d 45 63 76 78 } //01 00  WrmEcvx
		$a_01_32 = {4d 6c 77 66 6f 76 33 32 46 72 69 68 67 } //00 00  Mlwfov32Frihg
	condition:
		any of ($a_*)
 
}