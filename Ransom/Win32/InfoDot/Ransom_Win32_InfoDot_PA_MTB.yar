
rule Ransom_Win32_InfoDot_PA_MTB{
	meta:
		description = "Ransom:Win32/InfoDot.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 08 8b 16 8b 90 01 01 b9 33 fa 23 fb 33 d7 89 16 8b 54 24 90 01 01 8b 08 31 90 01 01 91 42 89 54 24 90 01 01 3b 54 24 90 01 01 7c 90 00 } //05 00 
		$a_01_1 = {2e 00 69 00 6e 00 66 00 6f 00 40 00 6d 00 79 00 6d 00 61 00 69 00 6c 00 39 00 5b 00 64 00 6f 00 74 00 5d 00 63 00 6f 00 6d 00 } //01 00  .info@mymail9[dot]com
		$a_01_2 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 43 00 20 00 70 00 69 00 6e 00 67 00 20 00 31 00 2e 00 31 00 2e 00 31 00 2e 00 31 00 20 00 2d 00 6e 00 20 00 31 00 20 00 2d 00 77 00 20 00 33 00 30 00 30 00 30 00 20 00 3e 00 20 00 4e 00 75 00 6c 00 20 00 26 00 20 00 44 00 65 00 6c 00 20 00 22 00 25 00 73 00 } //01 00  cmd.exe /C ping 1.1.1.1 -n 1 -w 3000 > Nul & Del "%s
		$a_01_3 = {74 61 73 6b 6b 69 6c 6c 20 2f 49 4d 20 73 71 6c 2a 20 2f 66 } //01 00  taskkill /IM sql* /f
		$a_03_4 = {5c 65 6e 63 5c 90 02 10 5c 65 6e 63 2e 70 64 62 90 00 } //00 00 
		$a_00_5 = {5d 04 00 00 0f } //33 04 
	condition:
		any of ($a_*)
 
}