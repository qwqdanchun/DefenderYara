
rule TrojanSpy_BAT_Solarnok_A{
	meta:
		description = "TrojanSpy:BAT/Solarnok.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {72 75 6e 6b 65 79 6c 6f 67 } //01 00  runkeylog
		$a_01_1 = {4b 6e 6f 63 6b 52 65 73 70 6f 6e 73 65 43 6f 6d 6d 61 6e 64 } //01 00  KnockResponseCommand
		$a_01_2 = {41 64 64 54 6f 53 74 61 72 74 75 70 } //01 00  AddToStartup
		$a_01_3 = {47 65 74 57 61 6c 6c 65 74 } //01 00  GetWallet
		$a_01_4 = {42 6f 74 69 6e 66 6f } //01 00  Botinfo
		$a_01_5 = {4b 65 79 4c 6f 67 67 65 72 } //01 00  KeyLogger
		$a_01_6 = {50 61 73 73 77 6f 72 64 47 72 61 62 62 65 72 } //01 00  PasswordGrabber
		$a_01_7 = {2f 00 43 00 20 00 70 00 69 00 6e 00 67 00 20 00 2d 00 6e 00 20 00 33 00 20 00 31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 20 00 3e 00 20 00 6e 00 75 00 6c 00 20 00 26 00 20 00 64 00 65 00 6c 00 20 00 2f 00 41 00 3a 00 53 00 48 00 20 00 22 00 } //01 00  /C ping -n 3 127.0.0.1 > nul & del /A:SH "
		$a_01_8 = {2c 00 22 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 22 00 3a 00 5b 00 } //00 00  ,"passwords":[
		$a_00_9 = {87 10 00 00 } //44 43 
	condition:
		any of ($a_*)
 
}