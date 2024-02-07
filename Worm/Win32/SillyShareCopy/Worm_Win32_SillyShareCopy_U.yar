
rule Worm_Win32_SillyShareCopy_U{
	meta:
		description = "Worm:Win32/SillyShareCopy.U,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {5b 00 41 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 } //02 00  [Autorun]
		$a_00_1 = {6f 00 70 00 65 00 6e 00 3d 00 4a 00 6f 00 6e 00 69 00 45 00 7a 00 7a 00 2e 00 65 00 78 00 65 00 } //01 00  open=JoniEzz.exe
		$a_00_2 = {70 00 72 00 6f 00 70 00 3a 00 46 00 69 00 6c 00 65 00 44 00 65 00 73 00 63 00 72 00 69 00 70 00 74 00 69 00 6f 00 6e 00 3b 00 53 00 69 00 7a 00 65 00 } //01 00  prop:FileDescription;Size
		$a_00_3 = {50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 5c 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 43 00 4d 00 44 00 } //01 00  Policies\System\DisableCMD
		$a_00_4 = {73 00 68 00 6f 00 77 00 53 00 75 00 70 00 65 00 72 00 48 00 69 00 64 00 64 00 65 00 6e 00 } //01 00  showSuperHidden
		$a_00_5 = {73 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 20 00 2d 00 73 00 20 00 2d 00 66 00 } //00 00  shutdown -s -f
	condition:
		any of ($a_*)
 
}