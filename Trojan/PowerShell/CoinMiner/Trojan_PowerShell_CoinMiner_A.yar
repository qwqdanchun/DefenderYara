
rule Trojan_PowerShell_CoinMiner_A{
	meta:
		description = "Trojan:PowerShell/CoinMiner.A,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_00_0 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 20 00 2d 00 4e 00 6f 00 6e 00 49 00 20 00 2d 00 57 00 20 00 48 00 69 00 64 00 64 00 65 00 6e 00 20 00 2d 00 4e 00 6f 00 50 00 20 00 2d 00 45 00 78 00 65 00 63 00 20 00 42 00 79 00 70 00 61 00 73 00 73 00 20 00 2d 00 45 00 6e 00 63 00 20 00 49 00 45 00 58 00 20 00 28 00 4e 00 65 00 77 00 2d 00 4f 00 62 00 6a 00 65 00 63 00 74 00 20 00 4e 00 65 00 74 00 2e 00 57 00 65 00 62 00 43 00 6c 00 69 00 65 00 6e 00 74 00 29 00 2e 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 } //01 00  powershell.exe -NonI -W Hidden -NoP -Exec Bypass -Enc IEX (New-Object Net.WebClient).DownloadString(
		$a_02_1 = {49 00 45 00 58 00 20 00 28 00 4e 00 65 00 77 00 2d 00 4f 00 62 00 6a 00 65 00 63 00 74 00 20 00 4e 00 65 00 74 00 2e 00 57 00 65 00 62 00 43 00 6c 00 69 00 65 00 6e 00 74 00 29 00 2e 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 22 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 38 00 35 00 2e 00 32 00 30 00 34 00 2e 00 37 00 34 00 2e 00 31 00 30 00 35 00 2f 00 90 02 ff 2e 00 63 00 73 00 73 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}