
rule Trojan_BAT_SnakeKeylogger_RPC_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.RPC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {2c 03 17 2b 03 16 2b 00 2d 03 26 2b 07 28 1a 00 00 0a 2b 00 2a 90 09 06 00 20 20 4e 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_SnakeKeylogger_RPC_MTB_2{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.RPC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 00 64 00 6e 00 2e 00 64 00 69 00 73 00 63 00 6f 00 72 00 64 00 61 00 70 00 70 00 2e 00 63 00 6f 00 6d 00 } //01 00  cdn.discordapp.com
		$a_01_1 = {4a 00 70 00 6d 00 6e 00 76 00 6e 00 6c 00 6d 00 2e 00 70 00 6e 00 67 00 } //01 00  Jpmnvnlm.png
		$a_01_2 = {2f 00 63 00 20 00 74 00 69 00 6d 00 65 00 6f 00 75 00 74 00 20 00 32 00 30 00 } //01 00  /c timeout 20
		$a_01_3 = {45 00 78 00 6e 00 6a 00 64 00 79 00 66 00 6d 00 70 00 6a 00 73 00 71 00 74 00 62 00 71 00 66 00 67 00 74 00 69 00 6a 00 68 00 } //01 00  Exnjdyfmpjsqtbqfgtijh
		$a_01_4 = {57 65 62 52 65 71 75 65 73 74 } //01 00  WebRequest
		$a_01_5 = {42 69 6e 64 65 72 } //00 00  Binder
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_SnakeKeylogger_RPC_MTB_3{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.RPC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 11 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 00 64 00 6e 00 2e 00 64 00 69 00 73 00 63 00 6f 00 72 00 64 00 61 00 70 00 70 00 2e 00 63 00 6f 00 6d 00 2f 00 61 00 76 00 61 00 74 00 61 00 72 00 73 00 } //01 00  cdn.discordapp.com/avatars
		$a_01_1 = {61 00 70 00 69 00 34 00 2e 00 69 00 70 00 69 00 66 00 79 00 2e 00 6f 00 72 00 67 00 } //01 00  api4.ipify.org
		$a_01_2 = {4d 00 6f 00 7a 00 69 00 6c 00 6c 00 61 00 } //01 00  Mozilla
		$a_01_3 = {43 00 68 00 72 00 6f 00 6d 00 65 00 } //01 00  Chrome
		$a_01_4 = {53 00 61 00 66 00 61 00 72 00 69 00 } //01 00  Safari
		$a_01_5 = {63 00 6f 00 6f 00 6b 00 69 00 65 00 } //01 00  cookie
		$a_01_6 = {44 00 69 00 73 00 63 00 6f 00 72 00 64 00 20 00 43 00 61 00 6e 00 61 00 72 00 79 00 } //01 00  Discord Canary
		$a_01_7 = {44 00 69 00 73 00 63 00 6f 00 72 00 64 00 20 00 50 00 54 00 42 00 } //01 00  Discord PTB
		$a_01_8 = {4f 00 70 00 65 00 72 00 61 00 } //01 00  Opera
		$a_01_9 = {42 00 72 00 61 00 76 00 65 00 } //01 00  Brave
		$a_01_10 = {59 00 61 00 6e 00 64 00 65 00 78 00 } //01 00  Yandex
		$a_01_11 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00  Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_12 = {48 74 74 70 57 65 62 52 65 73 70 6f 6e 73 65 } //01 00  HttpWebResponse
		$a_01_13 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_14 = {47 65 74 46 6f 6c 64 65 72 50 61 74 68 } //01 00  GetFolderPath
		$a_01_15 = {46 69 6c 65 53 74 72 65 61 6d } //01 00  FileStream
		$a_01_16 = {53 70 65 63 69 61 6c 46 6f 6c 64 65 72 } //00 00  SpecialFolder
	condition:
		any of ($a_*)
 
}