
rule Trojan_Win32_Tarifarch_N{
	meta:
		description = "Trojan:Win32/Tarifarch.N,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 0c 00 00 64 00 "
		
	strings :
		$a_00_0 = {73 74 61 72 69 66 66 73 2e 72 75 } //64 00  stariffs.ru
		$a_00_1 = {73 00 74 00 61 00 72 00 69 00 66 00 66 00 73 00 2e 00 72 00 75 00 } //64 00  stariffs.ru
		$a_00_2 = {72 75 66 69 6c 65 2e 69 6e } //64 00  rufile.in
		$a_00_3 = {72 65 61 6c 66 69 6e 65 2e 69 6e } //64 00  realfine.in
		$a_00_4 = {66 61 73 74 72 75 2e 69 6e } //64 00  fastru.in
		$a_02_5 = {74 66 69 6c 90 01 01 2e 72 75 90 00 } //64 00 
		$a_00_6 = {73 6d 20 73 74 20 e0 72 69 20 66 66 73 20 2e 72 75 } //64 00 
		$a_00_7 = {6c 61 70 6f 78 6f 6c 2e 69 6e } //05 00  lapoxol.in
		$a_00_8 = {54 42 69 6c 6c 69 6e 67 49 6e 66 6f 72 6d 61 74 69 6f 6e } //05 00  TBillingInformation
		$a_00_9 = {62 74 6e 53 75 62 73 63 72 69 70 74 69 6f 6e 43 68 65 63 6b 43 6f 64 65 } //05 00  btnSubscriptionCheckCode
		$a_00_10 = {63 6f 6e 66 69 72 6d 61 74 69 6f 6e 43 6f 64 65 4b 65 79 } //01 00  confirmationCodeKey
		$a_00_11 = {14 ff a6 58 38 91 92 47 2d 64 78 37 30 6b 5e 2c 2e 6a 62 31 2e 83 } //00 00 
	condition:
		any of ($a_*)
 
}