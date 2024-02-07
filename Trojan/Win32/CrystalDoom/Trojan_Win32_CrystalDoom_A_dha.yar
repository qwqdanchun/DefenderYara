
rule Trojan_Win32_CrystalDoom_A_dha{
	meta:
		description = "Trojan:Win32/CrystalDoom.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 1b 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 53 61 66 65 41 70 70 65 6e 64 50 72 6f 67 72 61 6d 4d 6f 64 } //01 00 
		$a_01_1 = {00 47 65 74 43 70 53 74 61 74 75 73 28 } //01 00 
		$a_01_2 = {00 54 73 41 70 69 74 } //01 00 
		$a_01_3 = {00 73 63 72 69 70 74 5f 63 6f 64 65 } //01 00  猀牣灩彴潣敤
		$a_01_4 = {00 73 63 72 69 70 74 5f 74 65 73 74 2e 70 79 74 } //01 00  猀牣灩彴整瑳瀮瑹
		$a_01_5 = {00 50 72 65 73 65 74 53 74 61 74 75 73 46 69 65 6c 64 } //01 00  倀敲敳却慴畴䙳敩摬
		$a_01_6 = {00 55 70 6c 6f 61 64 44 75 6d 6d 79 46 6f 72 63 65 } //01 00 
		$a_01_7 = {00 75 6e 61 62 6c 65 20 74 6f 20 63 6f 6e 6e 65 63 74 21 } //01 00 
		$a_01_8 = {00 69 6e 6a 65 63 74 2e 62 69 6e } //01 00 
		$a_01_9 = {00 69 6d 61 69 6e 2e 62 69 6e } //01 00  椀慭湩戮湩
		$a_01_10 = {00 6d 6f 64 75 6c 65 20 66 69 6c 65 20 72 65 61 64 20 46 41 49 4c 55 52 45 } //01 00 
		$a_01_11 = {00 73 65 74 74 69 6e 67 20 61 72 67 75 6d 65 6e 74 73 2e 2e 2e } //01 00 
		$a_01_12 = {00 50 72 65 73 65 74 20 66 61 69 6c 75 72 65 } //01 00 
		$a_01_13 = {00 6d 61 69 6e 20 63 6f 64 65 20 77 72 69 74 65 20 46 41 49 4c 45 44 21 } //01 00 
		$a_01_14 = {00 4d 50 20 42 61 64 20 53 74 61 74 65 21 } //01 00 
		$a_01_15 = {00 63 6f 75 6e 74 64 6f 77 6e 3a 20 25 64 } //01 00  挀畯瑮潤湷›搥
		$a_01_16 = {00 53 63 72 69 70 74 20 68 61 73 20 73 74 6f 70 70 65 64 } //01 00 
		$a_01_17 = {00 53 63 72 69 70 74 20 53 55 43 43 45 53 53 } //01 00 
		$a_01_18 = {00 53 63 72 69 70 74 20 46 41 49 4c 45 44 } //01 00  匀牣灩⁴䅆䱉䑅
		$a_01_19 = {00 66 6f 72 63 65 20 72 65 6d 6f 76 69 6e 67 20 74 68 65 20 63 6f 64 65 2c 20 6e 6f 20 63 68 65 63 6b 73 } //01 00 
		$a_01_20 = {00 72 65 73 74 6f 72 65 20 6e 6f 74 20 72 65 71 75 69 72 65 64 } //01 00 
		$a_01_21 = {00 54 73 48 69 } //01 00 
		$a_01_22 = {00 63 6f 6e 6e 65 63 74 5f 72 65 73 75 6c 74 } //01 00 
		$a_01_23 = {00 73 63 72 69 70 74 5f 63 6f 64 65 74 } //01 00 
		$a_01_24 = {00 63 6f 6e 73 6f 6c 65 5f 65 78 65 00 } //05 00 
		$a_00_25 = {ff ff 60 38 02 00 00 44 20 00 80 4e } //05 00 
		$a_00_26 = {40 3c 00 00 62 80 40 00 80 3c 40 20 03 7c 1c 00 82 40 04 00 62 80 60 00 80 3c 40 20 03 7c 0c 00 82 40 18 00 42 38 1c 00 00 48 80 00 80 3c 00 01 84 60 40 20 02 7c 18 00 80 40 04 00 42 38 c4 ff ff 4b } //00 00 
	condition:
		any of ($a_*)
 
}