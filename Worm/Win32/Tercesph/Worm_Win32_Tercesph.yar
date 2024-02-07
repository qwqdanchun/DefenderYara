
rule Worm_Win32_Tercesph{
	meta:
		description = "Worm:Win32/Tercesph,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 02 00 "
		
	strings :
		$a_02_0 = {53 00 65 00 63 00 72 00 65 00 74 00 5c 00 42 00 61 00 73 00 69 00 63 00 5c 00 55 00 70 00 64 00 61 00 74 00 65 00 64 00 5c 00 57 00 6f 00 72 00 6d 00 2b 00 54 00 72 00 6f 00 6a 00 61 00 6e 00 28 00 4e 00 45 00 57 00 90 02 02 29 00 5c 00 77 00 6f 00 72 00 6d 00 2e 00 76 00 62 00 70 00 90 00 } //02 00 
		$a_00_1 = {53 00 65 00 63 00 72 00 65 00 74 00 2e 00 65 00 78 00 65 00 00 00 00 00 } //01 00 
		$a_00_2 = {73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 53 00 65 00 63 00 72 00 65 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  shell\open\Command=Secret.exe
		$a_00_3 = {50 00 68 00 69 00 6d 00 20 00 6e 00 67 00 75 00 6f 00 69 00 20 00 6c 00 6f 00 6e 00 2e 00 65 00 78 00 65 00 00 00 00 00 46 00 69 00 6c 00 65 00 73 00 } //01 00 
		$a_02_4 = {5c 00 6b 00 64 00 63 00 6f 00 6d 00 73 00 2e 00 64 00 6c 00 6c 00 90 01 06 75 00 73 00 65 00 72 00 69 00 6e 00 69 00 74 00 2e 00 65 00 78 00 65 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}