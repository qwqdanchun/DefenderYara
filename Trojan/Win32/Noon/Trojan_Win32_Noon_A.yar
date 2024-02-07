
rule Trojan_Win32_Noon_A{
	meta:
		description = "Trojan:Win32/Noon.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_03_0 = {81 38 50 45 00 00 0f 85 90 01 04 8d 45 84 ba 44 00 00 00 e8 90 01 04 8d 45 c8 ba 10 00 00 00 e8 90 01 04 c7 45 84 44 00 00 00 66 c7 45 b4 00 00 c7 45 b0 01 00 00 00 90 00 } //01 00 
		$a_01_1 = {2e 30 2e 30 5c 61 76 70 75 69 2e 65 78 65 } //01 00  .0.0\avpui.exe
		$a_01_2 = {43 3a 5c 00 2f 43 20 73 68 75 74 64 6f 77 6e 20 2d 66 20 2d 72 20 2d 74 20 30 00 00 63 6d 64 2e 65 78 65 00 6f 70 65 6e } //01 00 
		$a_01_3 = {2f 63 20 72 65 67 20 64 65 6c 65 74 65 20 68 6b 63 75 5c 45 6e 76 69 72 6f 6e 6d 65 6e 74 20 2f 76 20 77 69 6e 64 69 72 20 2f 66 20 26 26 20 65 78 69 74 } //01 00  /c reg delete hkcu\Environment /v windir /f && exit
		$a_01_4 = {62 69 6e 64 65 64 66 69 6c 65 64 72 6f 70 61 6e 64 65 78 65 63 75 74 65 } //01 00  bindedfiledropandexecute
		$a_01_5 = {2e 6c 6e 6b 22 20 22 43 3a 5c 55 73 65 72 73 5c } //01 00  .lnk" "C:\Users\
		$a_01_6 = {5c 42 69 74 64 65 66 65 6e 64 65 72 } //01 00  \Bitdefender
		$a_03_7 = {76 62 63 00 90 02 10 53 65 6c 66 20 49 6e 6a 65 63 74 69 6f 6e 90 00 } //00 00 
		$a_00_8 = {5d 04 00 00 } //fb ab 
	condition:
		any of ($a_*)
 
}