
rule Backdoor_BAT_Bladabindi_F{
	meta:
		description = "Backdoor:BAT/Bladabindi.F,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {56 4b 43 6f 64 65 54 6f 55 6e 69 63 6f 64 65 } //01 00  VKCodeToUnicode
		$a_01_1 = {6e 00 65 00 74 00 73 00 68 00 20 00 66 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 20 00 61 00 64 00 64 00 20 00 61 00 6c 00 6c 00 6f 00 77 00 65 00 64 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 22 00 } //01 00  netsh firewall add allowedprogram "
		$a_01_2 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 6b 00 20 00 70 00 69 00 6e 00 67 00 20 00 30 00 20 00 26 00 20 00 64 00 65 00 6c 00 20 00 22 00 } //01 00  cmd.exe /k ping 0 & del "
		$a_03_3 = {07 57 00 69 00 6e 00 00 03 ae 00 90 01 01 03 22 21 90 00 } //01 00 
		$a_01_4 = {16 1f 68 9d 11 20 17 1f 74 9d 11 20 18 1f 74 9d 11 20 19 1f 70 9d 11 20 73 } //00 00 
	condition:
		any of ($a_*)
 
}