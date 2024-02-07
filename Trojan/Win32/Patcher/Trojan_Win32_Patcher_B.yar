
rule Trojan_Win32_Patcher_B{
	meta:
		description = "Trojan:Win32/Patcher.B,SIGNATURE_TYPE_PEHSTR_EXT,ffffffa2 00 ffffffa0 00 13 00 00 64 00 "
		
	strings :
		$a_01_0 = {03 08 51 50 8b 40 04 91 c1 e9 02 81 30 2f 88 b8 00 c1 00 02 83 c0 04 e2 f2 58 59 8b 40 04 53 54 50 51 ff 35 bc 81 40 00 e8 95 58 00 00 } //14 00 
		$a_00_1 = {65 00 2d 00 53 00 61 00 66 00 65 00 6b 00 65 00 79 00 } //14 00  e-Safekey
		$a_00_2 = {45 00 42 00 4a 00 53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 5f 00 33 00 } //14 00  EBJSecurity_3
		$a_00_3 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 49 6e 74 65 72 6e 65 74 20 53 65 74 74 69 6e 67 73 5c 72 62 74 } //01 00  Software\Microsoft\Windows\CurrentVersion\Internet Settings\rbt
		$a_00_4 = {4a 6f 31 65 7a 64 73 6c } //01 00  Jo1ezdsl
		$a_00_5 = {70 6f 77 72 70 72 6f 66 2e 64 6c 6c } //01 00  powrprof.dll
		$a_00_6 = {63 6f 6e 6c 66 2e 69 6e 69 } //01 00  conlf.ini
		$a_00_7 = {6b 65 72 64 6e 70 2e 69 6e 69 } //01 00  kerdnp.ini
		$a_00_8 = {6b 6f 72 6c 67 2e 69 6e 69 } //01 00  korlg.ini
		$a_00_9 = {6e 77 6b 6c 72 2e 69 6e 69 } //01 00  nwklr.ini
		$a_00_10 = {6e 77 70 70 2e 69 6e 69 } //01 00  nwpp.ini
		$a_00_11 = {6e 77 77 6c 6e 74 2e 69 6e 69 } //01 00  nwwlnt.ini
		$a_00_12 = {70 70 64 6e 70 2e 69 6e 69 } //01 00  ppdnp.ini
		$a_00_13 = {70 70 6f 72 6c 67 2e 69 6e 69 } //01 00  pporlg.ini
		$a_00_14 = {77 69 6e 64 6d 6c 70 2e 69 6e 69 } //01 00  windmlp.ini
		$a_00_15 = {77 6f 72 6c 67 2e 69 6e 69 } //01 00  worlg.ini
		$a_00_16 = {6c 64 73 68 79 72 2e 6f 6c 64 } //28 00  ldshyr.old
		$a_02_17 = {e8 00 00 00 00 58 05 90 01 04 ff e0 60 e8 00 00 00 90 00 } //64 00 
		$a_00_18 = {41 ad 33 db 90 0f be 54 05 00 38 f2 74 08 c1 cb 0d 03 da 40 eb ef 3b df 75 e6 5e } //00 00 
	condition:
		any of ($a_*)
 
}