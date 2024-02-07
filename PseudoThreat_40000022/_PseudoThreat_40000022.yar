
rule _PseudoThreat_40000022{
	meta:
		description = "!PseudoThreat_40000022,SIGNATURE_TYPE_PEHSTR_EXT,08 00 07 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 53 65 63 75 72 69 74 79 20 54 6f 6f 6c 73 5c 78 30 30 } //01 00  \Security Tools\x00
		$a_01_1 = {69 65 73 62 70 6c 2e 64 6c 6c } //01 00  iesbpl.dll
		$a_00_2 = {69 66 20 65 78 69 73 74 20 22 25 73 22 20 67 6f 74 6f } //01 00  if exist "%s" goto
		$a_00_3 = {32 31 36 2e 31 39 35 2e 2a 2e 2a } //01 00  216.195.*.*
		$a_00_4 = {36 36 2e 32 33 35 2e 2a 2e 2a } //01 00  66.235.*.*
		$a_00_5 = {32 30 35 2e 31 37 37 2e 2a 2e 2a } //01 00  205.177.*.*
		$a_00_6 = {66 75 6e 78 78 78 70 6f 72 6e 2e 63 6f 6d } //01 00  funxxxporn.com
		$a_00_7 = {63 6f 6e 74 65 6e 74 6c 6f 63 6b 65 72 2e 6e 65 74 } //01 00  contentlocker.net
		$a_00_8 = {61 64 75 6c 74 66 69 6c 6d 73 69 74 65 2e 63 6f 6d } //00 00  adultfilmsite.com
	condition:
		any of ($a_*)
 
}