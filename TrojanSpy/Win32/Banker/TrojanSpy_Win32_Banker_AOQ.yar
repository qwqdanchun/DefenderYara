
rule TrojanSpy_Win32_Banker_AOQ{
	meta:
		description = "TrojanSpy:Win32/Banker.AOQ,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {38 00 30 00 38 00 41 00 38 00 42 00 39 00 44 00 41 00 33 00 43 00 35 00 33 00 46 00 43 00 42 00 35 00 42 00 39 00 32 00 44 00 32 00 35 00 41 00 39 00 30 00 } //01 00  808A8B9DA3C53FCB5B92D25A90
		$a_01_1 = {39 00 39 00 42 00 42 00 34 00 35 00 44 00 37 00 36 00 44 00 46 00 33 00 37 00 30 00 46 00 30 00 37 00 41 00 46 00 41 00 34 00 34 00 } //01 00  99BB45D76DF370F07AFA44
		$a_01_2 = {30 00 39 00 30 00 46 00 33 00 37 00 32 00 46 00 33 00 46 00 42 00 41 00 33 00 44 00 43 00 42 00 35 00 37 00 39 00 37 00 44 00 36 00 35 00 38 00 44 00 44 00 30 00 42 00 36 00 45 00 46 00 38 00 30 00 45 00 35 00 37 00 44 00 44 00 } //01 00  090F372F3FBA3DCB5797D658DD0B6EF80E57DD
		$a_03_3 = {75 b6 ff 45 f8 ff 4d f4 75 8e 8d 4d ec ba 90 01 04 b8 90 01 04 e8 90 01 04 8b 55 ec a1 90 01 04 8b 00 8b 40 60 8b 80 98 00 00 00 33 c9 8b 18 ff 93 a4 00 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanSpy_Win32_Banker_AOQ_2{
	meta:
		description = "TrojanSpy:Win32/Banker.AOQ,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {76 00 61 00 6c 00 6f 00 72 00 3d 00 76 00 65 00 72 00 64 00 65 00 5b 00 } //01 00  valor=verde[
		$a_01_1 = {74 6d 70 5f 68 64 61 } //01 00  tmp_hda
		$a_01_2 = {44 00 33 00 34 00 34 00 45 00 37 00 30 00 44 00 33 00 45 00 38 00 32 00 43 00 33 00 36 00 32 00 39 00 41 00 38 00 38 00 46 00 39 00 31 00 46 00 43 00 42 00 30 00 45 00 34 00 37 00 45 00 32 00 30 00 33 00 } //01 00  D344E70D3E82C3629A88F91FCB0E47E203
		$a_03_3 = {75 1b 8d 55 f8 b8 90 01 04 e8 90 01 04 8b 45 f8 b2 01 e8 90 01 04 84 c0 74 1a 8d 55 f4 b8 90 01 04 e8 90 01 04 8b 55 f4 b8 90 01 04 e8 90 01 04 8d 55 f0 b8 90 01 04 e8 90 00 } //01 00 
		$a_03_4 = {85 c0 74 72 8d 95 c8 fd ff ff b8 90 01 04 e8 90 01 04 8b 95 c8 fd ff ff 8b 45 f8 05 90 01 01 03 00 00 e8 90 01 04 8d 95 c4 fd ff ff b8 90 01 04 e8 90 01 04 8b 95 c4 fd ff ff b8 90 01 04 e8 90 01 04 8d 95 c0 fd ff ff b8 90 01 04 e8 90 00 } //00 00 
		$a_00_5 = {80 10 00 } //00 20 
	condition:
		any of ($a_*)
 
}