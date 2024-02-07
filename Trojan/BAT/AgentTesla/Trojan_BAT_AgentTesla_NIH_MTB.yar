
rule Trojan_BAT_AgentTesla_NIH_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NIH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 09 00 00 0a 00 "
		
	strings :
		$a_01_0 = {24 39 39 61 31 32 36 33 30 2d 35 31 36 39 2d 34 62 33 66 2d 39 62 62 35 2d 65 63 31 34 65 37 37 32 34 64 33 61 } //0a 00  $99a12630-5169-4b3f-9bb5-ec14e7724d3a
		$a_01_1 = {24 31 35 62 61 32 38 31 65 2d 33 61 39 39 2d 34 38 32 64 2d 39 62 30 34 2d 37 30 33 61 36 36 32 65 35 64 35 62 } //01 00  $15ba281e-3a99-482d-9b04-703a662e5d5b
		$a_01_2 = {50 4c 4f 4b 4e 4d 4a 49 55 48 42 56 47 59 54 46 43 58 44 52 45 53 5a 41 57 51 41 5a 41 44 46 47 46 54 46 47 59 43 54 59 59 54 52 44 45 58 47 59 55 56 55 49 47 48 48 55 49 } //01 00  PLOKNMJIUHBVGYTFCXDRESZAWQAZADFGFTFGYCTYYTRDEXGYUVUIGHHUI
		$a_01_3 = {4f 49 55 54 45 52 53 57 42 41 4a 48 47 46 46 44 53 41 46 48 4b 4f 49 4d 4e 59 48 47 54 54 52 46 47 44 52 43 46 45 53 45 57 44 } //01 00  OIUTERSWBAJHGFFDSAFHKOIMNYHGTTRFGDRCFESEWD
		$a_01_4 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_01_5 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //01 00  DebuggingModes
		$a_01_6 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_01_7 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_01_8 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //00 00  DebuggerNonUserCodeAttribute
	condition:
		any of ($a_*)
 
}