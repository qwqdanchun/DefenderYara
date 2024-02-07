
rule Worm_Win32_Autorun_AJ{
	meta:
		description = "Worm:Win32/Autorun.AJ,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 45 00 6d 00 75 00 6c 00 61 00 64 00 6f 00 72 00 5f 00 50 00 6c 00 61 00 79 00 53 00 74 00 61 00 74 00 69 00 6f 00 6e 00 5f 00 49 00 49 00 2e 00 65 00 78 00 65 00 } //01 00  C:\WINDOWS\system32\Emulador_PlayStation_II.exe
		$a_01_1 = {5c 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 00 00 } //01 00 
		$a_01_2 = {5c 00 46 00 6f 00 6c 00 64 00 65 00 72 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 43 00 6f 00 6d 00 6d 00 65 00 6e 00 74 00 2e 00 68 00 74 00 74 00 00 00 } //01 00 
		$a_01_3 = {45 00 3a 00 5c 00 56 00 69 00 72 00 75 00 73 00 5c 00 62 00 6f 00 72 00 72 00 61 00 } //00 00  E:\Virus\borra
	condition:
		any of ($a_*)
 
}