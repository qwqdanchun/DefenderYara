
rule Ransom_Win32_Genasom_DN{
	meta:
		description = "Ransom:Win32/Genasom.DN,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_00_0 = {20 00 2f 00 76 00 20 00 55 00 73 00 65 00 72 00 69 00 6e 00 69 00 74 00 20 00 2f 00 74 00 20 00 52 00 45 00 47 00 5f 00 53 00 5a 00 20 00 2f 00 64 00 20 00 22 00 25 00 57 00 49 00 4e 00 44 00 49 00 52 00 25 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 75 00 73 00 65 00 72 00 69 00 6e 00 69 00 74 00 2e 00 65 00 78 00 65 00 2c 00 25 00 75 00 73 00 65 00 72 00 70 00 72 00 6f 00 66 00 69 00 6c 00 65 00 25 00 5c 00 } //01 00   /v Userinit /t REG_SZ /d "%WINDIR%\system32\userinit.exe,%userprofile%\
		$a_03_1 = {ff d3 50 ff d6 68 d0 01 00 00 8d 94 24 90 01 02 00 00 6a 00 b9 0e 00 00 00 be 90 01 04 8d bc 24 90 01 02 00 00 52 f3 a5 e8 90 01 04 83 c4 0c 83 7c 24 10 00 0f 85 90 01 02 00 00 33 c0 68 06 02 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}