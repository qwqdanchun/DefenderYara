
rule Trojan_Win32_AutoRun_EC_MTB{
	meta:
		description = "Trojan:Win32/AutoRun.EC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {42 00 61 00 63 00 6b 00 75 00 70 00 20 00 6b 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 72 00 75 00 6d 00 61 00 68 00 } //1 Backup komputer rumah
		$a_01_1 = {56 00 69 00 72 00 75 00 73 00 5f 00 42 00 6f 00 6b 00 33 00 70 00 2e 00 76 00 62 00 70 00 } //1 Virus_Bok3p.vbp
		$a_01_2 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 73 00 74 00 61 00 72 00 74 00 20 00 77 00 6d 00 70 00 6c 00 61 00 79 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //1 cmd.exe /c start wmplayer.exe
		$a_01_3 = {73 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 20 00 2d 00 72 00 20 00 2d 00 66 00 20 00 2d 00 74 00 20 00 30 00 30 00 } //1 shutdown -r -f -t 00
		$a_01_4 = {41 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //1 Autorun.inf
		$a_01_5 = {48 00 69 00 64 00 65 00 46 00 69 00 6c 00 65 00 45 00 78 00 74 00 } //1 HideFileExt
		$a_01_6 = {57 00 33 00 32 00 2e 00 42 00 6f 00 6b 00 33 00 70 00 2e 00 41 00 2e 00 65 00 78 00 65 00 } //1 W32.Bok3p.A.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}