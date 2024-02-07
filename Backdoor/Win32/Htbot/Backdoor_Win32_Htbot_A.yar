
rule Backdoor_Win32_Htbot_A{
	meta:
		description = "Backdoor:Win32/Htbot.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {69 c0 fd 43 03 00 05 c9 9e 26 00 33 d2 b9 30 75 00 00 } //01 00 
		$a_00_1 = {40 00 66 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 20 00 61 00 64 00 64 00 20 00 61 00 6c 00 6c 00 6f 00 77 00 65 00 64 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 22 00 25 00 73 00 22 00 20 00 22 00 25 00 73 00 22 00 20 00 45 00 4e 00 41 00 42 00 4c 00 45 00 } //01 00  @firewall add allowedprogram "%s" "%s" ENABLE
		$a_00_2 = {3f 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 75 00 70 00 64 00 61 00 74 00 65 00 90 00 02 00 01 00 26 00 69 00 64 00 3d 00 25 00 73 00 26 00 69 00 70 00 3d 00 25 00 73 00 26 00 70 00 6f 00 72 00 74 00 3d 00 25 00 64 00 } //00 00 
		$a_00_3 = {80 10 } //00 00 
	condition:
		any of ($a_*)
 
}