
rule Backdoor_Win32_Poison_V{
	meta:
		description = "Backdoor:Win32/Poison.V,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 08 00 00 05 00 "
		
	strings :
		$a_03_0 = {52 50 8d 46 48 50 e8 90 01 02 ff ff 83 f8 ff 0f 84 08 01 00 00 89 06 66 81 7e 04 b3 d7 0f 85 c3 00 00 00 66 ff 4e 04 6a 00 ff 36 e8 90 01 02 ff ff 40 90 00 } //05 00 
		$a_03_1 = {b9 65 00 00 00 e8 90 01 02 ff ff 66 8b 83 90 01 02 00 00 66 89 83 90 01 02 00 00 eb 0d e8 90 01 02 ff ff 84 c0 0f 84 90 01 02 00 00 c6 83 90 01 02 00 00 01 c6 83 90 01 02 00 00 00 8b 83 90 01 02 00 00 90 00 } //05 00 
		$a_03_2 = {eb 08 8d 45 f8 e8 90 01 02 ff ff 8b 45 f8 e8 90 01 02 ff ff 50 68 90 01 02 40 00 8d 45 e8 ba 90 01 02 41 00 b9 15 00 00 00 e8 90 01 02 ff ff ff 75 e8 68 90 01 02 40 00 8d 45 ec ba 03 00 00 00 e8 90 01 02 ff ff 90 00 } //02 00 
		$a_01_3 = {54 4d 79 53 76 72 } //02 00  TMySvr
		$a_01_4 = {54 4d 79 54 68 64 } //02 00  TMyThd
		$a_01_5 = {54 4d 79 53 70 79 } //02 00  TMySpy
		$a_01_6 = {54 4d 79 41 75 64 } //02 00  TMyAud
		$a_01_7 = {54 4d 79 43 61 6d } //00 00  TMyCam
	condition:
		any of ($a_*)
 
}