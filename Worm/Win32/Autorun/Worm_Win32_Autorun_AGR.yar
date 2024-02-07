
rule Worm_Win32_Autorun_AGR{
	meta:
		description = "Worm:Win32/Autorun.AGR,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 07 00 00 0a 00 "
		
	strings :
		$a_02_0 = {66 75 63 6b 90 02 20 55 53 42 20 68 61 73 20 62 65 65 6e 20 67 61 6e 72 61 6e 67 21 90 00 } //0a 00 
		$a_00_1 = {52 65 6d 6f 74 65 20 63 6f 6d 70 75 74 65 72 20 77 69 6c 6c 20 62 65 65 6e 20 73 6c 65 65 70 70 65 64 20 66 6f 72 20 25 64 } //01 00  Remote computer will been sleepped for %d
		$a_00_2 = {49 6e 69 74 42 61 63 6b 44 6f 6f 72 28 29 20 4f 4b 20 } //01 00  InitBackDoor() OK 
		$a_00_3 = {44 6c 6c 20 68 61 73 20 62 65 65 6e 20 64 65 6c 65 74 65 64 2c 72 65 63 6f 76 65 72 20 69 74 20 66 72 6f 6d 20 6d 65 6d 6f 72 79 21 } //01 00  Dll has been deleted,recover it from memory!
		$a_00_4 = {62 6f 6e 64 30 30 38 2e 6a 70 67 } //01 00  bond008.jpg
		$a_00_5 = {5c 75 73 62 70 72 6f 74 65 63 74 2e 65 78 65 } //01 00  \usbprotect.exe
		$a_00_6 = {5c 6d 73 73 69 67 6e 31 36 2e 64 6c 6c } //00 00  \mssign16.dll
	condition:
		any of ($a_*)
 
}
rule Worm_Win32_Autorun_AGR_2{
	meta:
		description = "Worm:Win32/Autorun.AGR,SIGNATURE_TYPE_PEHSTR,16 00 16 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {46 55 43 4b 20 41 4e 54 49 56 49 45 52 53 } //0a 00  FUCK ANTIVIERS
		$a_01_1 = {41 6c 6c 20 64 69 72 65 74 72 6f 79 20 66 69 6c 65 73 20 77 69 6c 6c 20 62 65 65 6e 20 63 6f 70 69 65 64 21 } //01 00  All diretroy files will been copied!
		$a_01_2 = {73 65 63 75 72 31 36 2e 64 6c 6c } //01 00  secur16.dll
		$a_01_3 = {5c 75 73 62 70 72 6f 74 65 63 74 2e 65 78 65 } //01 00  \usbprotect.exe
		$a_01_4 = {5c 7e 62 61 6e 64 75 2e 74 6d 70 } //00 00  \~bandu.tmp
	condition:
		any of ($a_*)
 
}