
rule PWS_Win32_OnLineGames_NZ{
	meta:
		description = "PWS:Win32/OnLineGames.NZ,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_01_0 = {3d 40 77 1b 00 76 9d } //1
		$a_00_1 = {43 4c 73 49 44 5c 7b 25 73 7d 5c } //1 CLsID\{%s}\
		$a_00_2 = {25 73 5c 54 61 73 6b 73 5c 25 73 2e 69 63 6f } //1 %s\Tasks\%s.ico
		$a_00_3 = {25 73 26 50 49 4e 3d 25 73 } //1 %s&PIN=%s
		$a_00_4 = {26 46 31 3d 25 73 26 46 32 3d 25 73 26 46 33 3d 25 73 26 46 34 3d 25 73 } //1 &F1=%s&F2=%s&F3=%s&F4=%s
		$a_00_5 = {78 00 00 00 65 00 00 00 2e 00 00 00 44 00 00 00 69 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=5
 
}