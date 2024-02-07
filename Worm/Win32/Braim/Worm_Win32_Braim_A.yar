
rule Worm_Win32_Braim_A{
	meta:
		description = "Worm:Win32/Braim.A,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 07 00 00 02 00 "
		
	strings :
		$a_01_0 = {41 72 71 75 69 76 6f 73 20 64 65 20 70 72 6f 67 72 61 6d 61 73 } //01 00  Arquivos de programas
		$a_01_1 = {4d 53 4e 20 4d 65 73 73 65 6e 67 65 72 } //01 00  MSN Messenger
		$a_00_2 = {6c 6f 67 2e 74 78 74 } //01 00  log.txt
		$a_01_3 = {3c 2f 63 6f 6e 74 61 63 74 3e } //01 00  </contact>
		$a_01_4 = {54 6f 6f 6c 68 65 6c 70 33 32 52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //02 00  Toolhelp32ReadProcessMemory
		$a_01_5 = {4d 65 73 73 65 6e 67 65 72 20 6e 61 6f 20 70 6f 64 65 20 73 65 72 } //0a 00  Messenger nao pode ser
		$a_01_6 = {01 7d 01 02 03 00 04 11 05 12 21 31 41 06 13 51 } //00 00 
	condition:
		any of ($a_*)
 
}