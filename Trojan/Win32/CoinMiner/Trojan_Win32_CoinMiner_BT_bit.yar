
rule Trojan_Win32_CoinMiner_BT_bit{
	meta:
		description = "Trojan:Win32/CoinMiner.BT!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {2d 6f 20 73 74 72 61 74 75 6d 2b 74 63 70 3a 2f 2f 78 6d 72 2e 6d 69 6e 65 72 63 69 72 63 6c 65 2e 63 6f 6d 3a 38 30 20 2d 75 20 90 05 10 03 30 2d 39 20 2d 70 } //2
		$a_01_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //1 Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_2 = {5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 75 00 70 00 64 00 61 00 74 00 65 00 73 00 2e 00 76 00 62 00 73 00 } //1 \windowsupdates.vbs
		$a_01_3 = {53 00 68 00 65 00 6c 00 6c 00 2e 00 52 00 75 00 6e 00 20 00 22 00 22 00 22 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 22 00 22 00 20 00 2f 00 43 00 } //2 Shell.Run """cmd.exe"" /C
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*2) >=4
 
}