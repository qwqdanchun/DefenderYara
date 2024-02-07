
rule Worm_BAT_Autorun_I{
	meta:
		description = "Worm:BAT/Autorun.I,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 61 00 64 00 67 00 72 00 61 00 62 00 62 00 65 00 72 00 2e 00 31 00 31 00 30 00 6d 00 62 00 2e 00 63 00 6f 00 6d 00 2f 00 74 00 6f 00 64 00 6f 00 2e 00 74 00 78 00 74 00 } //01 00  http://adgrabber.110mb.com/todo.txt
		$a_01_1 = {5b 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 } //01 00  [autorun]
		$a_01_2 = {6f 00 70 00 65 00 6e 00 3d 00 2e 00 5c 00 48 00 69 00 67 00 68 00 73 00 70 00 65 00 65 00 64 00 20 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 2e 00 65 00 78 00 65 00 } //00 00  open=.\Highspeed drivers.exe
	condition:
		any of ($a_*)
 
}