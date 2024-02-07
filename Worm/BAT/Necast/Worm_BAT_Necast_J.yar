
rule Worm_BAT_Necast_J{
	meta:
		description = "Worm:BAT/Necast.J,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {07 57 00 69 00 6e 00 00 03 ae 00 90 01 01 03 22 21 90 00 } //01 00 
		$a_01_1 = {55 00 30 00 56 00 46 00 58 00 30 00 31 00 42 00 55 00 30 00 74 00 66 00 54 00 6b 00 39 00 61 00 54 00 30 00 35 00 46 00 51 00 30 00 68 00 46 00 51 00 30 00 74 00 54 00 } //01 00  U0VFX01BU0tfTk9aT05FQ0hFQ0tT
		$a_01_2 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 6b 00 20 00 70 00 69 00 6e 00 67 00 20 00 30 00 20 00 26 00 20 00 64 00 65 00 6c 00 } //01 00  cmd.exe /k ping 0 & del
		$a_01_3 = {6e 00 65 00 74 00 73 00 68 00 20 00 66 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 20 00 61 00 64 00 64 00 20 00 61 00 6c 00 6c 00 6f 00 77 00 65 00 64 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 } //01 00  netsh firewall add allowedprogram
		$a_01_4 = {5b 00 45 00 4e 00 54 00 45 00 52 00 5d 00 } //01 00  [ENTER]
		$a_01_5 = {5b 00 65 00 6e 00 64 00 6f 00 66 00 5d 00 } //00 00  [endof]
	condition:
		any of ($a_*)
 
}