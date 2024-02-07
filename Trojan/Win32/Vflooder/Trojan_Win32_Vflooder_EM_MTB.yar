
rule Trojan_Win32_Vflooder_EM_MTB{
	meta:
		description = "Trojan:Win32/Vflooder.EM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {6d 00 73 00 6e 00 3a 00 2f 00 2f 00 40 00 75 00 69 00 2e 00 6d 00 61 00 72 00 40 00 2f 00 63 00 68 00 61 00 6e 00 62 00 61 00 72 00 2e 00 68 00 74 00 6d 00 } //01 00  msn://@ui.mar@/chanbar.htm
		$a_01_1 = {45 00 38 00 30 00 35 00 35 00 38 00 36 00 33 00 2d 00 34 00 39 00 35 00 36 00 2d 00 34 00 63 00 62 00 66 00 2d 00 39 00 43 00 41 00 35 00 2d 00 34 00 36 00 46 00 46 00 30 00 35 00 33 00 41 00 39 00 30 00 34 00 43 00 } //01 00  E8055863-4956-4cbf-9CA5-46FF053A904C
		$a_01_2 = {6d 00 61 00 72 00 6b 00 65 00 74 00 33 00 32 00 2e 00 6d 00 61 00 72 00 } //01 00  market32.mar
		$a_01_3 = {6d 00 73 00 6e 00 75 00 73 00 65 00 72 00 64 00 61 00 74 00 61 00 2e 00 74 00 78 00 74 00 } //01 00  msnuserdata.txt
		$a_01_4 = {64 72 6f 70 5c 62 62 69 6e 73 74 72 5c 64 75 6d 70 5c 6f 70 74 5c 6d 73 6e 36 2e 65 78 65 2e 70 64 62 } //01 00  drop\bbinstr\dump\opt\msn6.exe.pdb
		$a_01_5 = {6d 73 6e 36 2e 70 64 62 } //01 00  msn6.pdb
		$a_01_6 = {2d 62 75 64 64 69 65 73 } //00 00  -buddies
	condition:
		any of ($a_*)
 
}