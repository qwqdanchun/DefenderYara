
rule VirTool_Win32_Obfuscator_IT{
	meta:
		description = "VirTool:Win32/Obfuscator.IT,SIGNATURE_TYPE_PEHSTR,03 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {40 00 2a 00 5c 00 41 00 59 00 3a 00 5c 00 7a 00 65 00 75 00 73 00 5c 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 65 00 72 00 73 00 6f 00 75 00 72 00 63 00 65 00 5c 00 4d 00 79 00 5f 00 43 00 72 00 79 00 70 00 74 00 65 00 72 00 5f 00 76 00 62 00 63 00 72 00 79 00 70 00 74 00 65 00 72 00 5c 00 76 00 62 00 63 00 72 00 79 00 70 00 74 00 65 00 72 00 5c 00 6e 00 65 00 77 00 53 00 74 00 75 00 62 00 4d 00 79 00 5c 00 6d 00 79 00 70 00 72 00 6f 00 67 00 2e 00 76 00 62 00 70 00 } //01 00  @*\AY:\zeus\downloadersource\My_Crypter_vbcrypter\vbcrypter\newStubMy\myprog.vbp
		$a_01_1 = {40 00 61 00 53 00 70 00 6c 00 69 00 74 00 74 00 65 00 72 00 3b 00 43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 3b 00 43 00 3a 00 } //00 00  @aSplitter;C:\WINDOWS\system32;C:
	condition:
		any of ($a_*)
 
}