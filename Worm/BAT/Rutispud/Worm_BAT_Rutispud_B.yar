
rule Worm_BAT_Rutispud_B{
	meta:
		description = "Worm:BAT/Rutispud.B,SIGNATURE_TYPE_PEHSTR,0b 00 06 00 05 00 00 03 00 "
		
	strings :
		$a_01_0 = {54 00 68 00 65 00 20 00 76 00 69 00 63 00 74 00 69 00 6d 00 20 00 68 00 61 00 73 00 20 00 75 00 73 00 65 00 64 00 20 00 74 00 68 00 65 00 20 00 63 00 6c 00 69 00 70 00 62 00 6f 00 61 00 72 00 64 00 } //03 00  The victim has used the clipboard
		$a_01_1 = {3d 00 46 00 69 00 6c 00 65 00 5a 00 69 00 6c 00 6c 00 61 00 20 00 53 00 74 00 65 00 61 00 6c 00 3d 00 } //01 00  =FileZilla Steal=
		$a_01_2 = {48 00 4b 00 45 00 59 00 5f 00 4c 00 4f 00 43 00 41 00 4c 00 5f 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4c 00 69 00 6d 00 65 00 57 00 69 00 72 00 65 00 5c 00 } //02 00  HKEY_LOCAL_MACHINE\SOFTWARE\LimeWire\
		$a_01_3 = {31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 20 00 77 00 77 00 77 00 2e 00 76 00 69 00 72 00 75 00 73 00 74 00 6f 00 74 00 61 00 6c 00 2e 00 63 00 6f 00 6d 00 } //02 00  127.0.0.1 www.virustotal.com
		$a_01_4 = {77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5f 00 37 00 66 00 75 00 6c 00 6c 00 2e 00 73 00 63 00 72 00 } //00 00  windows_7full.scr
	condition:
		any of ($a_*)
 
}