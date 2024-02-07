
rule Backdoor_Win32_VB_KU{
	meta:
		description = "Backdoor:Win32/VB.KU,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 06 00 05 00 00 03 00 "
		
	strings :
		$a_00_0 = {5c 00 42 00 44 00 20 00 4b 00 69 00 74 00 20 00 4c 00 53 00 20 00 2d 00 20 00 34 00 63 00 68 00 61 00 6e 00 20 00 42 00 6f 00 74 00 } //02 00  \BD Kit LS - 4chan Bot
		$a_00_1 = {43 00 4d 00 44 00 20 00 2f 00 43 00 20 00 6e 00 65 00 74 00 20 00 73 00 74 00 6f 00 70 00 20 00 6d 00 70 00 73 00 73 00 76 00 63 00 } //03 00  CMD /C net stop mpssvc
		$a_00_2 = {5c 00 49 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 20 00 43 00 6f 00 64 00 65 00 63 00 73 00 2e 00 76 00 62 00 73 00 } //02 00  \Install Codecs.vbs
		$a_01_3 = {50 72 6f 70 65 72 67 61 74 65 4d 6f 64 } //01 00  PropergateMod
		$a_00_4 = {3a 00 5c 00 52 00 65 00 63 00 79 00 63 00 6c 00 65 00 72 00 5c 00 } //00 00  :\Recycler\
	condition:
		any of ($a_*)
 
}