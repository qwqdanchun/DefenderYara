
rule PWS_Win32_Gypthoy_A{
	meta:
		description = "PWS:Win32/Gypthoy.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 75 62 6d 69 74 22 20 6e 61 6d 65 3d 22 42 31 22 3e 3c 69 6e 70 75 74 20 74 79 70 65 3d 22 72 65 73 65 74 } //01 00  Submit" name="B1"><input type="reset
		$a_01_1 = {3c 70 3e 4c 4f 47 3a 26 6e 62 73 70 3b 26 6e 62 73 70 3b 26 6e 62 73 70 3b 26 6e 62 73 70 3b 26 6e 62 73 70 3b 26 6e 62 73 70 3b 26 6e 62 73 70 3b } //01 00  <p>LOG:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		$a_01_2 = {3c 69 6e 70 75 74 20 74 79 70 65 3d 22 74 65 78 74 22 20 6e 61 6d 65 3d 22 70 63 6e 61 6d 65 } //01 00  <input type="text" name="pcname
		$a_01_3 = {3c 74 69 74 6c 65 3e 53 65 72 69 61 6c 3c 2f 74 69 74 6c 65 3e } //01 00  <title>Serial</title>
		$a_01_4 = {41 00 72 00 65 00 20 00 59 00 6f 00 75 00 20 00 53 00 75 00 72 00 65 00 20 00 59 00 6f 00 75 00 20 00 57 00 61 00 6e 00 74 00 20 00 54 00 6f 00 20 00 43 00 6c 00 65 00 61 00 72 00 20 00 4c 00 6f 00 67 00 20 00 3f 00 3f 00 3f 00 } //01 00  Are You Sure You Want To Clear Log ???
		$a_01_5 = {4b 65 79 73 70 79 2f 70 6f 73 74 } //01 00  Keyspy/post
		$a_01_6 = {43 6f 6d 6d 61 6e 64 39 00 04 01 07 00 53 65 61 72 63 68 21 } //00 00  潃浭湡㥤Ѐ܁匀慥捲Ⅸ
	condition:
		any of ($a_*)
 
}