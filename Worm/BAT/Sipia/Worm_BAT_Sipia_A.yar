
rule Worm_BAT_Sipia_A{
	meta:
		description = "Worm:BAT/Sipia.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 0b 00 00 "
		
	strings :
		$a_01_0 = {5b 00 53 00 70 00 72 00 65 00 61 00 64 00 6c 00 6e 00 6b 00 5d 00 } //1 [Spreadlnk]
		$a_01_1 = {5b 00 53 00 70 00 72 00 65 00 61 00 64 00 50 00 32 00 50 00 5d 00 } //1 [SpreadP2P]
		$a_01_2 = {5b 00 4b 00 69 00 6c 00 6c 00 20 00 4e 00 6f 00 2d 00 49 00 50 00 5d 00 } //1 [Kill No-IP]
		$a_01_3 = {5b 00 42 00 6c 00 6f 00 63 00 6b 00 41 00 56 00 53 00 69 00 74 00 65 00 5d 00 } //1 [BlockAVSite]
		$a_01_4 = {5b 00 53 00 49 00 5d 00 } //1 [SI]
		$a_01_5 = {5b 00 53 00 70 00 72 00 65 00 61 00 64 00 4c 00 41 00 4e 00 5d 00 } //1 [SpreadLAN]
		$a_01_6 = {5b 00 42 00 53 00 4f 00 44 00 5d 00 } //1 [BSOD]
		$a_01_7 = {5b 00 53 00 70 00 72 00 65 00 61 00 64 00 46 00 6f 00 6c 00 64 00 65 00 72 00 5d 00 } //1 [SpreadFolder]
		$a_03_8 = {5b 00 41 00 6e 00 74 00 69 00 ?? 5d 00 } //1
		$a_01_9 = {5b 00 41 00 70 00 65 00 78 00 53 00 70 00 72 00 65 00 61 00 64 00 5d 00 } //1 [ApexSpread]
		$a_01_10 = {53 00 70 00 79 00 54 00 68 00 65 00 53 00 70 00 79 00 } //1 SpyTheSpy
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_03_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=4
 
}
rule Worm_BAT_Sipia_A_2{
	meta:
		description = "Worm:BAT/Sipia.A,SIGNATURE_TYPE_PEHSTR,05 00 05 00 0c 00 00 "
		
	strings :
		$a_01_0 = {46 6f 6c 64 65 72 5f 53 70 72 65 61 64 } //1 Folder_Spread
		$a_01_1 = {53 70 72 65 61 64 50 32 50 } //1 SpreadP2P
		$a_01_2 = {53 68 6f 72 74 63 75 74 53 70 72 65 61 64 } //1 ShortcutSpread
		$a_01_3 = {73 74 61 72 74 69 70 } //1 startip
		$a_01_4 = {61 70 65 78 73 70 72 65 61 64 } //1 apexspread
		$a_01_5 = {6c 61 6e 5f 73 70 } //1 lan_sp
		$a_01_6 = {4b 69 6c 6c 4e 6f 49 70 } //1 KillNoIp
		$a_01_7 = {42 6c 6f 63 6b 41 56 } //1 BlockAV
		$a_01_8 = {62 73 6f 64 } //1 bsod
		$a_01_9 = {53 70 79 54 68 65 53 70 79 } //1 SpyTheSpy
		$a_01_10 = {46 69 72 66 65 57 61 6c 6c } //1 FirfeWall
		$a_01_11 = {41 53 74 61 72 74 75 70 } //1 AStartup
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1) >=5
 
}