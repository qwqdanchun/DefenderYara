
rule TrojanDropper_Win32_Steam_E{
	meta:
		description = "TrojanDropper:Win32/Steam.E,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {31 00 33 00 33 00 37 00 20 00 53 00 74 00 65 00 61 00 6d 00 41 00 43 00 43 00 20 00 53 00 74 00 65 00 61 00 6c 00 65 00 72 00 20 00 50 00 72 00 69 00 76 00 61 00 74 00 65 00 } //01 00  1337 SteamACC Stealer Private
		$a_01_1 = {31 00 33 00 33 00 37 00 53 00 74 00 65 00 61 00 6d 00 4c 00 6f 00 67 00 69 00 6e 00 2e 00 74 00 78 00 74 00 } //01 00  1337SteamLogin.txt
		$a_01_2 = {31 00 33 00 33 00 37 00 53 00 74 00 65 00 61 00 6d 00 4c 00 6f 00 67 00 69 00 6e 00 2e 00 65 00 78 00 65 00 } //01 00  1337SteamLogin.exe
		$a_01_3 = {49 6e 74 65 72 6e 65 74 43 6f 6e 6e 65 63 74 41 } //01 00  InternetConnectA
		$a_01_4 = {52 65 61 64 53 65 72 76 65 72 45 58 45 } //01 00  ReadServerEXE
		$a_01_5 = {46 74 70 50 75 74 46 69 6c 65 41 } //01 00  FtpPutFileA
		$a_01_6 = {53 00 74 00 65 00 61 00 6d 00 70 00 77 00 6e 00 74 00 } //01 00  Steampwnt
		$a_01_7 = {47 65 74 41 6e 64 52 65 61 64 53 74 65 61 6d 41 63 63 6f 75 6e 74 49 6e 66 6f 72 6d 61 74 69 6f 6e } //00 00  GetAndReadSteamAccountInformation
	condition:
		any of ($a_*)
 
}