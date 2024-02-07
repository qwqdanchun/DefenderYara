
rule Trojan_Win32_Farfli_BAJ_MTB{
	meta:
		description = "Trojan:Win32/Farfli.BAJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 10 00 00 01 00 "
		
	strings :
		$a_01_0 = {46 2d 50 52 4f 54 2e 65 78 65 } //01 00  F-PROT.exe
		$a_01_1 = {61 76 67 61 75 72 64 2e 65 78 65 } //01 00  avgaurd.exe
		$a_01_2 = {73 70 69 64 65 72 6e 74 2e 65 78 65 } //01 00  spidernt.exe
		$a_01_3 = {54 72 6f 6a 61 6e 48 75 6e 74 65 72 2e 65 78 65 } //01 00  TrojanHunter.exe
		$a_01_4 = {51 55 48 4c 50 53 56 43 2e 45 58 45 } //01 00  QUHLPSVC.EXE
		$a_01_5 = {5b 43 4c 45 41 52 5d } //01 00  [CLEAR]
		$a_01_6 = {5b 42 41 43 4b 53 50 41 43 45 5d } //01 00  [BACKSPACE]
		$a_01_7 = {5b 44 45 4c 45 54 45 5d } //01 00  [DELETE]
		$a_01_8 = {5b 49 4e 53 45 52 54 5d } //01 00  [INSERT]
		$a_01_9 = {5b 4e 75 6d 20 4c 6f 63 6b 5d } //01 00  [Num Lock]
		$a_01_10 = {5b 44 6f 77 6e 5d } //01 00  [Down]
		$a_01_11 = {5b 52 69 67 68 74 5d } //01 00  [Right]
		$a_01_12 = {5b 4c 65 66 74 5d } //01 00  [Left]
		$a_01_13 = {65 77 74 65 61 6d 2e 65 32 2e 6c 75 79 6f 75 78 69 61 2e 6e 65 74 } //01 00  ewteam.e2.luyouxia.net
		$a_01_14 = {66 75 63 6b 79 6f 75 } //01 00  fuckyou
		$a_01_15 = {67 75 64 75 6f 2e 78 79 7a } //00 00  guduo.xyz
	condition:
		any of ($a_*)
 
}