
rule TrojanSpy_Win32_Banker_AIF{
	meta:
		description = "TrojanSpy:Win32/Banker.AIF,SIGNATURE_TYPE_PEHSTR_EXT,68 01 54 01 09 00 00 ffffffc8 00 "
		
	strings :
		$a_01_0 = {38 37 38 38 39 45 36 46 45 43 37 33 42 42 42 39 37 35 42 36 34 30 30 46 } //32 00  87889E6FEC73BBB975B6400F
		$a_01_1 = {38 38 38 36 39 32 36 30 42 30 34 41 43 32 35 32 45 45 34 44 43 41 37 44 42 32 34 31 46 46 31 41 32 42 45 30 32 30 45 45 } //32 00  88869260B04AC252EE4DCA7DB241FF1A2BE020EE
		$a_01_2 = {33 33 45 44 30 41 45 46 30 30 31 42 45 44 33 39 30 37 35 35 44 32 35 41 41 38 37 37 42 31 34 44 44 39 36 37 41 36 37 31 42 36 38 45 39 33 39 31 39 30 } //1e 00  33ED0AEF001BED390755D25AA877B14DD967A671B68E939190
		$a_01_3 = {44 30 34 41 44 38 32 42 31 45 31 30 45 46 37 32 46 34 37 39 41 46 37 41 38 42 39 33 44 38 37 32 38 39 39 32 36 38 41 42 36 34 42 34 34 37 44 36 } //1e 00  D04AD82B1E10EF72F479AF7A8B93D872899268AB64B447D6
		$a_01_4 = {43 45 46 30 38 31 37 31 46 46 44 33 37 31 43 31 35 45 39 35 45 42 42 38 34 42 35 37 30 38 45 36 36 41 30 36 39 41 43 36 32 43 39 35 35 41 37 37 43 38 32 } //14 00  CEF08171FFD371C15E95EBB84B5708E66A069AC62C955A77C82
		$a_01_5 = {35 45 44 38 37 37 38 41 39 42 37 46 39 43 36 45 42 31 42 44 36 44 41 31 37 44 38 30 38 37 38 46 42 42 34 35 44 34 35 38 41 31 37 43 42 45 35 43 41 38 37 41 38 33 38 38 39 37 } //14 00  5ED8778A9B7F9C6EB1BD6DA17D80878FBB45D458A17CBE5CA87A838897
		$a_01_6 = {33 37 43 38 36 37 42 41 35 33 41 45 34 45 41 32 37 37 } //14 00  37C867BA53AE4EA277
		$a_01_7 = {43 37 36 38 42 31 37 46 39 31 39 35 36 46 } //14 00  C768B17F91956F
		$a_01_8 = {35 37 46 42 30 35 30 41 45 37 33 45 43 37 } //00 00  57FB050AE73EC7
	condition:
		any of ($a_*)
 
}