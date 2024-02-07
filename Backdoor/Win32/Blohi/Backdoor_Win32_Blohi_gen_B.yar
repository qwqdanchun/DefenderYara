
rule Backdoor_Win32_Blohi_gen_B{
	meta:
		description = "Backdoor:Win32/Blohi.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {23 00 43 00 68 00 61 00 74 00 4f 00 4b 00 23 00 } //01 00  #ChatOK#
		$a_01_1 = {63 00 32 00 68 00 31 00 64 00 47 00 52 00 76 00 64 00 32 00 34 00 67 00 4c 00 58 00 4d 00 67 00 4c 00 57 00 59 00 67 00 4c 00 58 00 51 00 67 00 4d 00 41 00 3d 00 3d 00 } //01 00  c2h1dGRvd24gLXMgLWYgLXQgMA==
		$a_01_2 = {53 00 47 00 46 00 6a 00 61 00 32 00 56 00 79 00 49 00 43 00 30 00 74 00 50 00 69 00 41 00 67 00 } //01 00  SGFja2VyIC0tPiAg
		$a_01_3 = {52 00 47 00 39 00 33 00 62 00 6d 00 78 00 76 00 59 00 57 00 51 00 3d 00 } //00 00  RG93bmxvYWQ=
	condition:
		any of ($a_*)
 
}