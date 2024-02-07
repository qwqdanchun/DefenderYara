
rule Trojan_Win32_Zlob_BB{
	meta:
		description = "Trojan:Win32/Zlob.BB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_02_0 = {6d 61 6b 65 2d 6d 90 02 03 68 61 70 70 79 2d 70 6c 90 00 } //01 00 
		$a_02_1 = {49 2d 64 6f 2d 6e 6f 90 02 07 65 63 90 02 02 69 74 21 90 00 } //01 00 
		$a_02_2 = {63 65 73 73 6f 73 75 63 90 02 05 36 35 34 30 32 90 00 } //01 00 
		$a_00_3 = {61 33 41 47 69 31 4e } //03 00  a3AGi1N
		$a_00_4 = {6c 75 62 72 69 63 2e 64 6c 6c 00 63 61 6e 74 6f 00 6d 75 74 6f 62 72 6f 6e 63 00 70 65 79 64 65 79 72 61 00 } //00 00  畬牢捩搮汬挀湡潴洀瑵扯潲据瀀祥敤特a
	condition:
		any of ($a_*)
 
}