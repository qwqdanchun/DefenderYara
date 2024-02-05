
rule PWS_BAT_Phoenix_GG_MTB{
	meta:
		description = "PWS:BAT/Phoenix.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,13 00 13 00 0c 00 00 0a 00 "
		
	strings :
		$a_80_0 = {47 72 61 62 62 65 72 } //Grabber  01 00 
		$a_80_1 = {5c 4d 65 74 61 4d 61 73 6b 5c } //\MetaMask\  01 00 
		$a_80_2 = {57 61 6c 6c 65 74 73 } //Wallets  01 00 
		$a_80_3 = {5c 52 6f 6e 69 6e 5c } //\Ronin\  01 00 
		$a_80_4 = {5c 42 69 6e 61 6e 63 65 5c } //\Binance\  01 00 
		$a_80_5 = {3c 50 61 73 73 20 65 6e 63 6f 64 69 6e 67 3d 22 62 61 73 65 36 34 22 3e } //<Pass encoding="base64">  01 00 
		$a_80_6 = {43 6c 69 70 62 6f 61 72 64 2e } //Clipboard.  01 00 
		$a_80_7 = {5c 4f 70 65 6e 56 50 4e } //\OpenVPN  01 00 
		$a_80_8 = {32 35 35 2e 32 35 35 2e 32 35 35 2e 32 35 35 } //255.255.255.255  01 00 
		$a_80_9 = {4c 6f 67 69 6e 3a } //Login:  01 00 
		$a_80_10 = {47 61 6d 65 73 3a } //Games:  01 00 
		$a_80_11 = {66 74 70 2e 69 6e 69 } //ftp.ini  00 00 
	condition:
		any of ($a_*)
 
}