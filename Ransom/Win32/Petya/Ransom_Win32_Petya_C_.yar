
rule Ransom_Win32_Petya_C_{
	meta:
		description = "Ransom:Win32/Petya.C!!Petya.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,08 00 08 00 0f 00 00 01 00 "
		
	strings :
		$a_00_0 = {59 6f 75 20 62 65 63 61 6d 65 20 76 69 63 74 69 6d 20 6f 66 20 74 68 65 20 47 4f 4c 44 45 4e 45 59 45 20 52 41 4e 53 4f 4d 57 41 52 45 21 } //01 00  You became victim of the GOLDENEYE RANSOMWARE!
		$a_00_1 = {59 6f 75 20 63 61 6e 20 70 75 72 63 68 61 73 65 20 74 68 69 73 20 6b 65 79 20 6f 6e 20 74 68 65 20 64 61 72 6b 6e 65 74 20 70 61 67 65 20 73 68 6f 77 6e } //01 00  You can purchase this key on the darknet page shown
		$a_00_2 = {54 6f 20 70 75 72 63 68 61 73 65 20 79 6f 75 72 20 6b 65 79 20 61 6e 64 20 72 65 73 74 6f 72 65 20 79 6f 75 72 20 64 61 74 61 2c 20 70 6c 65 61 73 65 20 66 6f 6c 6c 6f 77 20 74 68 65 73 65 20 74 68 72 65 65 20 65 61 73 79 20 73 74 65 70 73 3a } //01 00  To purchase your key and restore your data, please follow these three easy steps:
		$a_00_3 = {45 6e 74 65 72 20 79 6f 75 72 20 70 65 72 73 6f 6e 61 6c 20 64 65 63 72 79 70 74 69 6f 6e 20 63 6f 64 65 20 74 68 65 72 65 3a } //02 00  Enter your personal decryption code there:
		$a_01_4 = {73 72 77 03 70 65 66 03 72 61 66 03 6f 72 66 03 } //02 00  牳ͷ数ͦ慲ͦ牯ͦ
		$a_01_5 = {77 6d 61 03 77 6d 76 03 6f 67 67 03 73 77 66 24 } //02 00  海͡海Ͷ杯ͧ睳⑦
		$a_00_6 = {08 23 23 55 52 4c 31 23 23 08 23 23 55 52 4c 32 23 23 08 23 23 43 4f 44 45 23 23 } //02 00 
		$a_00_7 = {25 73 5c 53 79 73 74 65 6d 33 32 5c 6b 65 72 6e 65 6c 33 32 2e 64 6c 6c 3a 31 32 33 34 35 36 37 38 } //02 00  %s\System32\kernel32.dll:12345678
		$a_00_8 = {25 73 5c 73 79 73 74 65 6d 33 32 5c 25 63 2a 25 63 2e 65 78 65 } //01 00  %s\system32\%c*%c.exe
		$a_00_9 = {25 73 5c 73 79 73 74 65 6d 33 32 5c 25 73 } //01 00  %s\system32\%s
		$a_00_10 = {25 73 5c 7b 25 73 7d } //01 00  %s\{%s}
		$a_00_11 = {3a 2f 2f 67 6f 6c 64 65 6e } //01 00  ://golden
		$a_00_12 = {3a 2f 2f 69 70 69 6e 66 6f 2e 69 6f 2f 69 70 } //01 00  ://ipinfo.io/ip
		$a_00_13 = {53 45 4c 45 43 54 20 2a 20 46 52 4f 4d 20 41 6e 74 69 76 69 72 75 73 50 72 6f 64 75 63 74 } //01 00  SELECT * FROM AntivirusProduct
		$a_00_14 = {52 4f 4f 54 5c 53 65 63 75 72 69 74 79 43 65 6e 74 65 72 32 } //00 00  ROOT\SecurityCenter2
	condition:
		any of ($a_*)
 
}