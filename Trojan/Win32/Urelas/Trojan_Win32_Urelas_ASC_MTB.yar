
rule Trojan_Win32_Urelas_ASC_MTB{
	meta:
		description = "Trojan:Win32/Urelas.ASC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {73 61 6e 66 64 72 2e 62 61 74 } //02 00  sanfdr.bat
		$a_01_1 = {31 32 31 2e 38 38 2e 35 2e 31 38 33 } //02 00  121.88.5.183
		$a_01_2 = {31 32 31 2e 38 38 2e 35 2e 31 38 34 } //01 00  121.88.5.184
		$a_01_3 = {25 00 73 00 25 00 73 00 2e 00 65 00 78 00 65 00 } //01 00  %s%s.exe
		$a_01_4 = {5c 00 2e 00 5c 00 50 00 48 00 59 00 53 00 49 00 43 00 41 00 4c 00 44 00 52 00 49 00 56 00 45 00 } //01 00  \.\PHYSICALDRIVE
		$a_01_5 = {33 c0 f6 94 05 f4 fd ff ff 40 3b c6 72 } //00 00 
	condition:
		any of ($a_*)
 
}