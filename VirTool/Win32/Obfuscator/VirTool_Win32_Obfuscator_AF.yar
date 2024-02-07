
rule VirTool_Win32_Obfuscator_AF{
	meta:
		description = "VirTool:Win32/Obfuscator.AF,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 3a 5c 44 6f 6b 75 6d 65 6e 74 65 20 75 6e 64 20 45 69 6e 73 74 65 6c 6c 75 6e 67 65 6e 5c 32 66 61 73 74 34 79 6f 75 5c 44 65 73 6b 74 6f 70 5c 56 69 73 75 61 6c 53 74 75 64 69 6f 36 5c 56 69 73 75 61 6c 53 74 75 64 69 6f 36 5c 46 69 6c 65 73 5c 56 42 39 38 5c 56 42 36 2e 4f 4c 42 } //01 00  C:\Dokumente und Einstellungen\2fast4you\Desktop\VisualStudio6\VisualStudio6\Files\VB98\VB6.OLB
		$a_01_1 = {43 00 3a 00 5c 00 44 00 6f 00 6b 00 75 00 6d 00 65 00 6e 00 74 00 65 00 20 00 75 00 6e 00 64 00 20 00 45 00 69 00 6e 00 73 00 74 00 65 00 6c 00 6c 00 75 00 6e 00 67 00 65 00 6e 00 5c 00 32 00 66 00 61 00 73 00 74 00 34 00 79 00 6f 00 75 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 56 00 69 00 73 00 75 00 61 00 6c 00 53 00 74 00 75 00 64 00 69 00 6f 00 36 00 5c 00 56 00 69 00 73 00 75 00 61 00 6c 00 53 00 74 00 75 00 64 00 69 00 6f 00 36 00 5c 00 46 00 69 00 6c 00 65 00 73 00 5c 00 56 00 42 00 39 00 38 00 5c 00 4e 00 65 00 75 00 65 00 72 00 20 00 4f 00 72 00 64 00 6e 00 65 00 72 00 20 00 28 00 32 00 29 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 32 00 2e 00 76 00 62 00 70 00 } //01 00  C:\Dokumente und Einstellungen\2fast4you\Desktop\VisualStudio6\VisualStudio6\Files\VB98\Neuer Ordner (2)\Project2.vbp
		$a_01_2 = {45 6e 63 72 79 70 74 46 69 6c 65 } //01 00  EncryptFile
		$a_01_3 = {45 6e 63 72 79 70 74 42 79 74 65 } //01 00  EncryptByte
		$a_01_4 = {44 65 63 72 79 70 74 42 79 74 65 } //01 00  DecryptByte
		$a_01_5 = {44 65 63 72 79 70 74 46 69 6c 65 } //01 00  DecryptFile
		$a_01_6 = {48 00 65 00 6c 00 70 00 4d 00 65 00 2e 00 65 00 78 00 65 00 } //01 00  HelpMe.exe
		$a_01_7 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //00 00  ShellExecuteA
	condition:
		any of ($a_*)
 
}