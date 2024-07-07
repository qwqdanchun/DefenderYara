
rule Worm_Win32_Autorun_OM{
	meta:
		description = "Worm:Win32/Autorun.OM,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 09 00 06 00 00 "
		
	strings :
		$a_01_0 = {25 63 3a 5c 41 75 74 6f 72 75 6e 2e 69 6e 66 } //1 %c:\Autorun.inf
		$a_01_1 = {5b 41 75 74 6f 52 75 6e 5d 0d 0a 53 68 65 6c 6c 45 78 65 63 75 74 65 3d 25 73 } //1 䅛瑵副湵൝匊敨汬硅捥瑵㵥猥
		$a_01_2 = {25 74 65 6d 70 25 5c 61 75 74 6f 72 75 6e 2e 64 61 74 } //1 %temp%\autorun.dat
		$a_01_3 = {4e 6f 44 72 69 76 65 54 79 70 65 41 75 74 6f 52 75 6e 00 00 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 50 6f 6c 69 63 69 65 73 5c 45 78 70 6c 6f 72 65 72 } //1
		$a_01_4 = {53 68 6f 77 53 75 70 65 72 48 69 64 64 65 6e } //1 ShowSuperHidden
		$a_01_5 = {57 69 6e 64 6f 77 73 55 70 64 61 74 65 72 00 00 57 69 6e 55 70 64 74 65 72 2e 65 78 65 } //6
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*6) >=9
 
}