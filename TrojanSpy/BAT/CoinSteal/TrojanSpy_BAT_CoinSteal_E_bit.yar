
rule TrojanSpy_BAT_CoinSteal_E_bit{
	meta:
		description = "TrojanSpy:BAT/CoinSteal.E!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {42 00 69 00 74 00 63 00 6f 00 69 00 6e 00 2d 00 51 00 74 00 } //01 00  Bitcoin-Qt
		$a_01_1 = {77 00 61 00 6c 00 6c 00 65 00 74 00 2e 00 64 00 61 00 74 00 } //01 00  wallet.dat
		$a_01_2 = {5c 00 73 00 74 00 65 00 61 00 6c 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00  \stealer.exe
		$a_01_3 = {73 00 68 00 75 00 66 00 66 00 6c 00 65 00 72 00 2e 00 70 00 68 00 70 00 3f 00 74 00 79 00 70 00 65 00 3d 00 7b 00 30 00 7d 00 26 00 75 00 73 00 65 00 72 00 3d 00 7b 00 31 00 7d 00 26 00 63 00 6f 00 70 00 79 00 3d 00 7b 00 32 00 7d 00 } //01 00  shuffler.php?type={0}&user={1}&copy={2}
		$a_01_4 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 5c 00 } //00 00  Software\Microsoft\Windows\CurrentVersion\Run\
	condition:
		any of ($a_*)
 
}