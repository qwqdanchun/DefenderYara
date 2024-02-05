
rule PWS_Win32_OnLineGames_ZFQ{
	meta:
		description = "PWS:Win32/OnLineGames.ZFQ,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {52 c6 04 1f e9 89 4c 1f 01 8b 44 24 0c 50 53 56 ff 15 } //01 00 
		$a_02_1 = {f7 d2 33 d0 83 f2 74 89 90 90 90 01 04 40 8d 94 01 90 01 04 83 fa 74 7e 90 00 } //01 00 
		$a_00_2 = {d5 cb ba c5 25 73 20 20 20 c3 dc c2 eb 25 73 20 } //00 00 
	condition:
		any of ($a_*)
 
}