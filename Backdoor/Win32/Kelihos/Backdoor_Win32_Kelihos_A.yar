
rule Backdoor_Win32_Kelihos_A{
	meta:
		description = "Backdoor:Win32/Kelihos.A,SIGNATURE_TYPE_PEHSTR,04 00 04 00 07 00 00 03 00 "
		
	strings :
		$a_01_0 = {65 77 32 49 59 48 68 58 56 2f 33 41 4a 77 73 50 57 4e 56 73 6b 67 3d 3d } //01 00  ew2IYHhXV/3AJwsPWNVskg==
		$a_01_1 = {29 3a 20 66 61 69 6c 65 64 20 74 6f 20 61 6e 69 6c 69 7a 65 20 72 65 70 6c 79 } //01 00  ): failed to anilize reply
		$a_01_2 = {46 61 69 6c 65 64 20 74 6f 20 77 72 69 74 65 20 61 75 74 6f 72 75 6e 20 65 6e 74 72 79 } //01 00  Failed to write autorun entry
		$a_01_3 = {70 72 65 73 6e 6f 73 65 20 6e 6f 74 20 66 69 6c 6c 65 64 } //01 00  presnose not filled
		$a_01_4 = {73 6d 61 72 74 69 6e 64 65 78 } //01 00  smartindex
		$a_01_5 = {2f 00 6c 00 6f 00 67 00 67 00 73 00 39 00 39 00 } //01 00  /loggs99
		$a_01_6 = {64 65 63 72 3a 20 00 2e 68 74 6d 00 } //00 00  敤牣›⸀瑨m
	condition:
		any of ($a_*)
 
}