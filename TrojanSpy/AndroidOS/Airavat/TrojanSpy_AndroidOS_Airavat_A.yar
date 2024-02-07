
rule TrojanSpy_AndroidOS_Airavat_A{
	meta:
		description = "TrojanSpy:AndroidOS/Airavat.A,SIGNATURE_TYPE_DEXHSTR_EXT,09 00 09 00 11 00 00 01 00 "
		
	strings :
		$a_01_0 = {5f 63 68 61 6e 67 65 77 61 6c 6c } //01 00  _changewall
		$a_01_1 = {5f 64 6d 70 63 61 6c } //01 00  _dmpcal
		$a_01_2 = {5f 64 6d 70 63 6f 6e } //01 00  _dmpcon
		$a_01_3 = {5f 64 6d 70 73 6d } //01 00  _dmpsm
		$a_01_4 = {5f 70 61 6c 79 73 6d 75 64 69 63 } //01 00  _palysmudic
		$a_01_5 = {5f 73 65 74 72 65 73 70 6f } //01 00  _setrespo
		$a_01_6 = {5f 73 65 74 70 72 65 73 } //01 00  _setpres
		$a_01_7 = {5f 73 6e 6f 74 69 6f 77 } //01 00  _snotiow
		$a_01_8 = {5f 73 75 64 6f 61 70 74 } //01 00  _sudoapt
		$a_01_9 = {5f 74 74 73 64 65 76 } //01 00  _ttsdev
		$a_01_10 = {5f 76 6f 69 63 65 72 65 } //01 00  _voicere
		$a_01_11 = {5f 73 65 74 70 72 65 73 32 } //01 00  _setpres2
		$a_01_12 = {5f 70 68 69 64 61 74 73 75 } //01 00  _phidatsu
		$a_01_13 = {5f 70 69 68 74 65 73 74 } //01 00  _pihtest
		$a_01_14 = {5f 72 65 6d 69 63 62 6a 65 } //01 00  _remicbje
		$a_00_15 = {73 68 6f 77 6e 6f 74 69 73 73 } //01 00  shownotiss
		$a_00_16 = {6f 70 65 6e 77 65 62 75 72 69 } //00 00  openweburi
		$a_00_17 = {5d 04 00 00 a0 } //3b 05 
	condition:
		any of ($a_*)
 
}