
rule Trojan_Win32_Ardsw_F{
	meta:
		description = "Trojan:Win32/Ardsw.F,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {6d 00 69 00 6e 00 6b 00 65 00 72 00 6e 00 65 00 6c 00 5c 00 63 00 72 00 74 00 73 00 5c 00 75 00 63 00 72 00 74 00 5c 00 69 00 6e 00 63 00 5c 00 63 00 6f 00 72 00 65 00 63 00 72 00 74 00 5f 00 69 00 6e 00 74 00 65 00 72 00 6e 00 61 00 6c 00 5f 00 73 00 74 00 72 00 74 00 6f 00 78 00 2e 00 68 00 } //01 00  minkernel\crts\ucrt\inc\corecrt_internal_strtox.h
		$a_00_1 = {2f 63 20 73 74 61 72 74 20 22 22 20 22 25 73 22 20 25 73 00 } //01 00  振猠慴瑲∠•┢≳┠s
		$a_01_2 = {41 61 63 6b 65 72 2e 63 6f 6d 2f 69 6e 74 65 72 66 68 74 74 70 3a 2f 2f 77 77 77 2e 6f 70 74 74 72 } //01 00  Aacker.com/interfhttp://www.opttr
		$a_01_3 = {68 00 43 00 70 00 70 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 69 00 6e 00 20 00 4f 00 6e 00 53 00 74 00 61 00 72 00 74 00 } //00 00  hCppWindowsService in OnStart
	condition:
		any of ($a_*)
 
}