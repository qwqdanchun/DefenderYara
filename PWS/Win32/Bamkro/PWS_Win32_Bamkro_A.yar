
rule PWS_Win32_Bamkro_A{
	meta:
		description = "PWS:Win32/Bamkro.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {6b 75 72 6f 62 61 6d 31 39 2e 6d 6c 2f 75 73 65 72 2e 70 68 70 } //02 00  kurobam19.ml/user.php
		$a_01_1 = {63 00 6f 00 6e 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 00 00 25 00 73 00 5c 00 25 00 73 00 00 00 63 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 2e 00 64 00 61 00 74 00 00 00 66 00 6c 00 61 00 73 00 68 00 70 00 6c 00 61 00 79 00 65 00 72 00 5f 00 75 00 70 00 64 00 61 00 74 00 65 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_2 = {25 73 5c 4d 69 63 72 6f 73 6f 66 74 5c 4e 65 74 77 6f 72 6b 5c 73 76 63 68 6f 73 74 2e 65 78 65 } //01 00  %s\Microsoft\Network\svchost.exe
		$a_01_3 = {47 45 54 20 2f 76 69 65 77 2f 67 61 6d 65 2f 67 61 6d 65 2e 61 73 70 3f 74 79 70 65 3d 42 61 64 75 6b 69 } //01 00  GET /view/game/game.asp?type=Baduki
		$a_01_4 = {42 61 6e 6b 20 6f 66 20 41 6d 65 72 69 63 61 20 6c 6f 67 2d 69 6e } //01 00  Bank of America log-in
		$a_01_5 = {77 77 77 2e 67 6f 6f 38 37 2e 63 6f 6d 77 77 77 2e 6f 6d 63 33 31 2e 63 6f 6d } //00 00  www.goo87.comwww.omc31.com
	condition:
		any of ($a_*)
 
}