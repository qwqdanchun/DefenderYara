
rule Trojan_Win32_Panddos_C{
	meta:
		description = "Trojan:Win32/Panddos.C,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {5c 53 65 72 76 65 72 5c 44 44 4f 53 90 01 03 54 68 72 65 61 64 2e 63 70 70 90 00 } //01 00 
		$a_01_1 = {48 6f 6f 6b 4b 65 79 42 6f 61 72 64 2e 64 6c 6c } //01 00  HookKeyBoard.dll
		$a_01_2 = {5c 43 6f 6d 6d 6f 6e 5c 69 6e 63 5c 48 49 5f 50 4c 41 59 5f 41 75 64 69 6f 49 4e 2e 63 70 70 } //01 00  \Common\inc\HI_PLAY_AudioIN.cpp
		$a_01_3 = {43 72 65 61 74 65 44 44 4f 53 53 6f 63 6b 65 74 20 46 61 69 6c 65 64 2e } //01 00  CreateDDOSSocket Failed.
		$a_03_4 = {73 74 6f 70 20 73 68 61 72 65 64 61 63 63 65 73 73 90 02 0a 73 74 61 72 74 20 73 68 61 72 65 64 61 63 63 65 73 73 90 00 } //01 00 
		$a_01_5 = {47 45 54 20 5e 26 26 25 24 25 24 5e 25 24 23 5e 26 2a 2a 28 2a 28 28 26 2a 5e 25 24 23 23 24 25 5e 26 2a 28 2a 26 5e 25 24 25 5e 26 2a 2e 68 74 6d } //00 00  GET ^&&%$%$^%$#^&**(*((&*^%$##$%^&*(*&^%$%^&*.htm
	condition:
		any of ($a_*)
 
}