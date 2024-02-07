
rule Trojan_Win32_Dursg_E{
	meta:
		description = "Trojan:Win32/Dursg.E,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 02 00 "
		
	strings :
		$a_03_0 = {8b 04 24 83 78 0c 02 53 50 0f 94 c3 e8 90 01 04 80 fb 01 5b b8 90 01 04 74 05 b8 90 00 } //01 00 
		$a_00_1 = {73 00 65 00 2e 00 70 00 68 00 70 00 3f 00 70 00 6f 00 70 00 3d 00 31 00 26 00 61 00 69 00 64 00 3d 00 25 00 73 00 } //01 00  se.php?pop=1&aid=%s
		$a_00_2 = {72 00 65 00 71 00 75 00 65 00 73 00 74 00 2e 00 70 00 68 00 70 00 3f 00 61 00 69 00 64 00 3d 00 25 00 73 00 } //00 00  request.php?aid=%s
	condition:
		any of ($a_*)
 
}