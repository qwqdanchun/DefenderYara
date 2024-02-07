
rule Trojan_Win32_Mespam_C_dll{
	meta:
		description = "Trojan:Win32/Mespam.C!dll,SIGNATURE_TYPE_PEHSTR,16 00 11 00 16 00 00 01 00 "
		
	strings :
		$a_01_0 = {4c 61 79 65 72 65 64 20 50 72 6f 76 69 64 65 72 20 41 73 79 6e 63 20 57 69 6e 64 6f 77 } //01 00  Layered Provider Async Window
		$a_01_1 = {43 4a 61 62 62 65 72 54 61 6c 6b 3a 3a } //01 00  CJabberTalk::
		$a_01_2 = {4d 45 53 53 41 47 45 20 57 49 54 48 20 41 44 56 20 54 45 58 54 20 53 45 4e 44 45 44 } //01 00  MESSAGE WITH ADV TEXT SENDED
		$a_01_3 = {63 6f 6e 74 61 63 74 20 6f 6b } //01 00  contact ok
		$a_01_4 = {62 6f 64 79 20 6f 6b } //01 00  body ok
		$a_01_5 = {6d 73 67 74 6f 20 66 6f 75 6e 64 } //01 00  msgto found
		$a_01_6 = {50 61 63 6b 65 74 20 6c 65 6e 20 3e 20 31 30 30 20 61 6e 64 20 61 64 76 5f 74 78 74 20 3e 33 } //01 00  Packet len > 100 and adv_txt >3
		$a_01_7 = {50 61 63 6b 65 74 20 46 72 6f 6d 20 75 73 65 72 } //01 00  Packet From user
		$a_01_8 = {7a 63 2e 70 68 70 } //01 00  zc.php
		$a_01_9 = {67 74 61 6c 6b } //01 00  gtalk
		$a_01_10 = {43 75 6e 69 5f 49 43 51 76 37 3a 3a } //01 00  Cuni_ICQv7::
		$a_01_11 = {53 65 6e 64 69 6e 67 20 41 44 56 45 52 54 20 54 45 58 54 20 74 6f 3a } //01 00  Sending ADVERT TEXT to:
		$a_01_12 = {43 59 61 68 6f 6f 4d 73 67 3a 3a 20 } //01 00  CYahooMsg:: 
		$a_01_13 = {43 4f 4e 54 41 43 54 20 54 4f 3a 3a 3a 3a 3e 3e 3e } //01 00  CONTACT TO::::>>>
		$a_01_14 = {61 6f 73 6d 78 2e 64 6c 6c } //01 00  aosmx.dll
		$a_01_15 = {61 69 6d 73 6d 78 2e 64 6c 6c } //01 00  aimsmx.dll
		$a_01_16 = {79 6d 73 67 73 6d 78 2e 64 6c 6c } //01 00  ymsgsmx.dll
		$a_01_17 = {67 74 61 6c 73 6d 78 2e 64 6c 6c } //01 00  gtalsmx.dll
		$a_01_18 = {73 6d 74 73 6d 78 70 66 78 2e 64 6c 6c } //01 00  smtsmxpfx.dll
		$a_01_19 = {73 6d 74 73 6d 78 2e 64 6c 6c } //01 00  smtsmx.dll
		$a_01_20 = {73 70 6d 73 6d 74 73 6d 78 70 66 78 2e 64 6c 6c } //01 00  spmsmtsmxpfx.dll
		$a_01_21 = {73 70 6d 73 6d 74 73 6d 78 2e 64 6c 6c } //00 00  spmsmtsmx.dll
	condition:
		any of ($a_*)
 
}