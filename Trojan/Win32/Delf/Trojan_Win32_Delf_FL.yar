
rule Trojan_Win32_Delf_FL{
	meta:
		description = "Trojan:Win32/Delf.FL,SIGNATURE_TYPE_PEHSTR_EXT,07 00 06 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {5c 53 79 6e 53 65 6e 64 2e 65 78 65 } //01 00  \SynSend.exe
		$a_00_1 = {73 76 63 68 6f 73 74 } //01 00  svchost
		$a_01_2 = {68 74 6f 6e 73 00 00 00 63 6f 6e 6e 65 63 74 } //01 00 
		$a_01_3 = {31 39 38 38 2f 31 31 2f 31 31 00 07 73 6f 74 61 69 6b 6b } //01 00 
		$a_01_4 = {e8 f3 95 fe ff 68 0c e5 42 00 8b 03 50 e8 06 96 fe ff 85 c0 74 28 83 3d 10 e5 42 00 01 75 0f 68 00 e5 42 00 6a 00 8b 03 50 e8 0a 96 fe ff } //01 00 
		$a_00_5 = {53 74 61 72 74 53 65 72 76 69 63 65 41 } //01 00  StartServiceA
		$a_00_6 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //00 00  SOFTWARE\Borland\Delphi\RTL
	condition:
		any of ($a_*)
 
}