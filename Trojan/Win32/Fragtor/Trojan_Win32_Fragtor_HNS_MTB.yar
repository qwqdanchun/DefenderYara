
rule Trojan_Win32_Fragtor_HNS_MTB{
	meta:
		description = "Trojan:Win32/Fragtor.HNS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 00 02 00 00 73 0e 0f be 4c 38 08 33 c8 88 4c 38 08 40 eb e8 } //01 00 
		$a_01_1 = {52 00 7a 00 43 00 65 00 66 00 00 00 43 00 65 00 66 00 52 00 65 00 6e 00 64 00 65 00 72 00 00 00 41 00 63 00 72 00 6f 00 00 00 00 00 52 00 7a } //01 00 
		$a_01_2 = {00 53 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 00 00 73 00 61 00 66 00 65 00 67 00 75 00 61 00 72 00 64 00 2e 00 65 00 78 00 65 00 00 00 78 00 33 00 32 00 00 00 53 00 6d 00 61 00 64 00 61 00 76 00 00 00 00 00 } //01 00 
		$a_01_3 = {25 00 73 00 25 00 73 00 5c 00 52 00 45 00 43 00 59 00 43 00 4c 00 45 00 52 00 53 00 } //01 00  %s%s\RECYCLERS
		$a_01_4 = {25 00 63 00 5c 00 25 00 63 00 5c 00 52 00 45 00 43 00 59 00 43 00 4c 00 45 00 52 00 2e 00 42 00 49 00 4e 00 5c 00 66 00 69 00 6c 00 65 00 73 00 5c 00 25 00 73 00 } //01 00  %c\%c\RECYCLER.BIN\files\%s
		$a_01_5 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //00 00  Software\Microsoft\Windows\CurrentVersion\Run
	condition:
		any of ($a_*)
 
}