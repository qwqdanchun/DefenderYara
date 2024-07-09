
rule TrojanSpy_Win32_ParalaxRat_ZZ_MTB{
	meta:
		description = "TrojanSpy:Win32/ParalaxRat.ZZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_02_0 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e [0-ff] 43 53 44 56 65 72 73 69 6f 6e [0-ff] 50 72 6f 64 75 63 74 4e 61 6d 65 } //1
		$a_00_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 4f 00 6e 00 63 00 65 00 } //1 Software\Microsoft\Windows\CurrentVersion\RunOnce
		$a_02_2 = {5b 00 43 00 74 00 72 00 6c 00 [0-ff] 5b 00 41 00 6c 00 74 00 [0-ff] 43 00 6c 00 69 00 70 00 62 00 6f 00 61 00 72 00 64 00 20 00 53 00 74 00 61 00 72 00 74 00 [0-ff] 43 00 6c 00 69 00 70 00 62 00 6f 00 61 00 72 00 64 00 20 00 45 00 6e 00 64 00 } //1
		$a_00_3 = {44 00 65 00 6c 00 65 00 74 00 65 00 46 00 69 00 6c 00 65 00 28 00 57 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 53 00 63 00 72 00 69 00 70 00 74 00 46 00 75 00 6c 00 6c 00 4e 00 61 00 6d 00 65 00 29 00 } //1 DeleteFile(Wscript.ScriptFullName)
		$a_00_4 = {43 00 72 00 65 00 61 00 74 00 65 00 4f 00 62 00 6a 00 65 00 63 00 74 00 } //1 CreateObject
		$a_00_5 = {2e 00 76 00 62 00 73 00 } //1 .vbs
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=6
 
}