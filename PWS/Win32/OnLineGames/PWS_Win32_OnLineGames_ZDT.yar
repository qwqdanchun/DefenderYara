
rule PWS_Win32_OnLineGames_ZDT{
	meta:
		description = "PWS:Win32/OnLineGames.ZDT,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {62 72 61 72 79 41 00 00 47 65 74 50 72 6f 63 41 64 64 72 65 73 73 00 00 52 65 67 43 6c 6f 73 65 4b 65 79 00 00 00 50 61 74 68 54 6f 52 65 67 69 6f 6e 00 00 53 79 73 46 72 65 65 53 74 72 69 6e 67 00 00 00 49 73 4d 65 6e 75 00 00 73 65 6e 64 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 50 f2 00 00 01 00 00 00 02 00 00 00 02 00 00 00 3c f2 00 00 44 f2 00 00 4c f2 00 00 e8 67 00 00 c0 67 00 00 59 f2 00 00 62 f2 00 00 01 00 00 00 48 6f 6f 6b 2e 64 6c 6c 00 6b 73 48 6f 6f 6b 77 6f 00 74 7a 48 6f 6f 6b 77 6f 00 00 00 e0 00 00 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}