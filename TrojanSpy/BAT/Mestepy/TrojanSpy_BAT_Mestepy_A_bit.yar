
rule TrojanSpy_BAT_Mestepy_A_bit{
	meta:
		description = "TrojanSpy:BAT/Mestepy.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 70 00 61 00 69 00 6e 00 65 00 6c 00 2e 00 6d 00 6f 00 62 00 6f 00 79 00 6d 00 6f 00 62 00 6f 00 79 00 2e 00 73 00 69 00 74 00 65 00 2f 00 70 00 61 00 73 00 74 00 65 00 2e 00 70 00 68 00 70 00 3f 00 70 00 77 00 3d 00 } //01 00  http://painel.moboymoboy.site/paste.php?pw=
		$a_01_1 = {73 00 65 00 72 00 76 00 65 00 72 00 2e 00 70 00 68 00 70 00 3f 00 70 00 77 00 3d 00 } //01 00  server.php?pw=
		$a_01_2 = {67 00 65 00 74 00 75 00 73 00 65 00 72 00 6d 00 73 00 67 00 2e 00 70 00 68 00 70 00 3f 00 68 00 61 00 73 00 68 00 3d 00 } //01 00  getusermsg.php?hash=
		$a_01_3 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 61 00 70 00 69 00 2e 00 69 00 6d 00 67 00 75 00 72 00 2e 00 63 00 6f 00 6d 00 2f 00 33 00 2f 00 75 00 70 00 6c 00 6f 00 61 00 64 00 2e 00 78 00 6d 00 6c 00 } //00 00  https://api.imgur.com/3/upload.xml
	condition:
		any of ($a_*)
 
}