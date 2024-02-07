
rule Ransom_MSIL_Vaultlock_A{
	meta:
		description = "Ransom:MSIL/Vaultlock.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 6f 69 6e 56 61 75 6c 74 } //01 00  CoinVault
		$a_01_1 = {62 6c 61 63 6b 6c 69 73 74 44 69 72 65 63 74 6f 72 69 65 73 } //01 00  blacklistDirectories
		$a_01_2 = {65 78 63 6c 75 64 65 50 69 63 74 75 72 65 73 46 6f 6c 64 65 72 } //01 00  excludePicturesFolder
		$a_01_3 = {4b 65 79 73 43 6f 6c 6c 65 63 74 69 6f 6e } //01 00  KeysCollection
		$a_01_4 = {46 00 69 00 6c 00 65 00 73 00 20 00 72 00 65 00 73 00 74 00 6f 00 72 00 65 00 64 00 21 00 20 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 77 00 69 00 6c 00 6c 00 20 00 64 00 65 00 73 00 74 00 72 00 6f 00 79 00 20 00 69 00 74 00 73 00 65 00 6c 00 66 00 2e 00 } //01 00  Files restored! Program will destroy itself.
		$a_01_5 = {43 00 6f 00 69 00 6e 00 56 00 61 00 75 00 6c 00 74 00 46 00 69 00 6c 00 65 00 4c 00 69 00 73 00 74 00 2e 00 74 00 78 00 74 00 } //01 00  CoinVaultFileList.txt
		$a_01_6 = {59 00 6f 00 75 00 72 00 20 00 77 00 6f 00 72 00 73 00 74 00 20 00 6e 00 69 00 67 00 68 00 74 00 6d 00 61 00 72 00 65 00 2e 00 } //01 00  Your worst nightmare.
		$a_01_7 = {66 72 6d 47 65 74 46 72 65 65 44 65 63 72 79 70 74 00 } //00 00  牦䝭瑥牆敥敄牣灹t
		$a_00_8 = {5d 04 00 } //00 10 
	condition:
		any of ($a_*)
 
}