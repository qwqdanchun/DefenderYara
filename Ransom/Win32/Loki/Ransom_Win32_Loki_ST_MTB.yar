
rule Ransom_Win32_Loki_ST_MTB{
	meta:
		description = "Ransom:Win32/Loki.ST!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_81_0 = {6c 6f 6b 69 5f 5f 5f 43 6f 70 79 } //01 00  loki___Copy
		$a_81_1 = {3c 74 69 74 6c 65 3e 4c 6f 6b 69 20 6c 6f 63 6b 65 72 3c 2f 74 69 74 6c 65 3e } //01 00  <title>Loki locker</title>
		$a_81_2 = {65 6e 63 72 79 70 74 65 64 20 66 69 6c 65 73 } //01 00  encrypted files
		$a_81_3 = {72 65 73 74 6f 72 65 } //01 00  restore
		$a_81_4 = {66 72 65 65 20 64 65 63 72 79 70 74 69 6f 6e } //01 00  free decryption
		$a_81_5 = {7b 55 4e 49 51 55 45 5f 49 44 } //01 00  {UNIQUE_ID
		$a_81_6 = {42 69 74 63 6f 69 6e 73 } //01 00  Bitcoins
		$a_81_7 = {6c 6f 63 61 6c 62 69 74 63 6f 69 6e 73 2e 63 6f 6d } //01 00  localbitcoins.com
		$a_81_8 = {63 6f 69 6e 64 65 73 6b 2e 63 6f 6d } //01 00  coindesk.com
		$a_81_9 = {44 6f 20 6e 6f 74 20 72 65 6e 61 6d 65 20 65 6e 63 72 79 70 74 65 64 20 66 69 6c 65 73 } //00 00  Do not rename encrypted files
	condition:
		any of ($a_*)
 
}