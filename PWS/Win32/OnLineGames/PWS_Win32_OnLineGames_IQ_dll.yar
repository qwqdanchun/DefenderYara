
rule PWS_Win32_OnLineGames_IQ_dll{
	meta:
		description = "PWS:Win32/OnLineGames.IQ!dll,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 "
		
	strings :
		$a_03_0 = {50 53 c6 45 ?? 78 c6 45 ?? 70 c6 45 ?? 6c c6 45 ?? 6f c6 45 ?? 72 c6 45 ?? 65 c6 45 ?? 72 c6 45 ?? 2e c6 45 ?? 65 c6 45 ?? 78 c6 45 ?? 65 } //1
		$a_03_1 = {50 53 c6 45 ?? 74 c6 45 ?? 66 c6 45 ?? 6d c6 45 ?? 6f c6 45 ?? 6e c6 45 ?? 2e c6 45 ?? 65 c6 45 ?? 78 c6 45 ?? 65 } //1
		$a_03_2 = {8b 45 08 80 65 ?? 00 a3 ?? ?? ?? ?? c6 45 ?? 4b c6 45 ?? 65 c6 45 ?? 72 c6 45 ?? 6e c6 45 ?? 65 c6 45 ?? 6c c6 45 ?? 33 c6 45 ?? 32 c6 45 ?? 2e c6 45 ?? 64 c6 45 ?? 6c c6 45 ?? 6c } //2
		$a_03_3 = {43 50 c6 45 ?? 72 ff 75 ?? c6 45 ?? 65 c6 45 ?? 61 c6 45 ?? 74 c6 45 ?? 65 c6 45 ?? 54 c6 45 ?? 68 c6 45 ?? 72 c6 45 ?? 65 c6 45 ?? 61 c6 45 ?? 64 88 5d } //2
		$a_01_4 = {2f 77 73 69 64 6e 79 2e 61 73 70 } //2 /wsidny.asp
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*2+(#a_03_3  & 1)*2+(#a_01_4  & 1)*2) >=7
 
}