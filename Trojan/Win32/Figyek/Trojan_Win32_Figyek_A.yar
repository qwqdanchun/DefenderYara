
rule Trojan_Win32_Figyek_A{
	meta:
		description = "Trojan:Win32/Figyek.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 18 00 00 01 00 "
		
	strings :
		$a_03_0 = {bc ff ff 00 00 00 00 eb 0f 8b 90 01 02 bc ff ff 83 90 01 01 01 89 90 01 02 bc ff ff 81 bd 90 01 01 bc ff ff 90 01 04 0f 8d 90 01 01 00 00 00 90 01 02 00 00 00 83 90 01 01 01 89 90 01 02 bc ff ff 90 00 } //01 00 
		$a_03_1 = {bc ff ff 81 90 01 01 a8 00 00 00 88 90 01 02 bc ff ff 8b 90 01 02 03 90 01 02 bc ff ff 8a 90 01 01 88 90 01 02 bc ff ff 0f b6 90 01 02 bc ff ff 0f b6 90 01 02 bc ff ff 33 90 01 01 8b 90 01 02 bd ff ff 03 90 01 02 bc ff ff 88 90 00 } //01 00 
		$a_03_2 = {ff ff 83 e9 01 8b 85 90 01 02 ff ff 99 f7 f9 89 95 90 01 02 ff ff 8b 95 90 01 02 ff ff 0f b6 82 00 20 41 00 35 a8 00 00 00 88 85 90 01 02 ff ff 90 00 } //01 00 
		$a_03_3 = {81 f1 a8 00 00 00 88 8d 90 01 02 ff ff 8b 95 90 01 02 ff ff 90 00 } //01 00 
		$a_03_4 = {0f b6 88 00 20 41 00 81 f1 a8 00 00 00 88 8d 90 01 02 ff ff 90 00 } //01 00 
		$a_03_5 = {0f b6 88 00 20 41 00 33 d1 8b 85 90 01 02 ff ff 03 85 90 01 02 ff ff 88 10 e9 90 00 } //01 00 
		$a_03_6 = {99 b9 d1 00 00 00 f7 f9 89 95 90 01 02 ff ff 8b 55 d0 03 95 90 01 02 ff ff 0f b6 02 8b 8d 90 01 02 ff ff 0f b6 91 90 01 04 33 c2 90 00 } //01 00 
		$a_03_7 = {0f b6 02 8b 90 01 03 ff ff 0f b6 91 90 01 04 33 c2 8b 4d 90 01 01 03 90 01 03 ff ff 88 01 90 04 01 02 eb e9 90 00 } //01 00 
		$a_03_8 = {0f b6 02 8b 90 01 03 ff ff 0f b6 91 90 01 04 33 c2 8b 90 01 03 ff ff 03 90 01 03 ff ff 88 01 90 04 01 02 eb e9 90 00 } //01 00 
		$a_03_9 = {ff ff 6a 00 68 80 00 00 00 6a 03 6a 00 6a 00 68 00 00 00 10 68 90 01 01 f1 40 00 ff 95 90 01 01 ff ff ff 89 85 90 01 01 bd ff ff 90 00 } //01 00 
		$a_03_10 = {89 45 84 6a 00 68 80 00 00 00 6a 03 6a 00 6a 00 68 00 00 00 10 68 9c f1 40 00 ff 55 84 89 85 90 01 02 ff ff 90 00 } //01 00 
		$a_03_11 = {6a 00 68 80 00 00 00 6a 03 6a 00 6a 00 68 00 00 00 10 68 b0 f1 40 00 ff 15 90 01 04 89 85 40 ff ff ff 83 bd 40 ff ff ff ff 0f 84 66 01 00 00 8b 90 00 } //01 00 
		$a_03_12 = {6a 00 68 80 00 00 00 6a 03 6a 00 6a 00 68 00 00 00 10 68 90 01 02 40 00 ff 15 90 01 03 00 89 85 90 01 02 ff ff 90 00 } //01 00 
		$a_01_13 = {ff 15 08 f0 40 00 89 } //01 00 
		$a_01_14 = {ff 15 08 20 41 00 89 } //01 00 
		$a_01_15 = {ff 15 08 20 41 00 89 85 60 ff ff ff 8b } //01 00 
		$a_03_16 = {ff 15 08 10 41 00 89 85 90 01 01 ff ff ff 90 00 } //01 00 
		$a_03_17 = {ff 15 08 c0 40 00 89 90 01 03 ff ff 90 00 } //01 00 
		$a_03_18 = {0b 00 00 83 c4 0c 85 c0 74 90 01 01 c7 45 90 01 01 6e 00 00 00 68 90 01 01 12 41 00 8d 90 01 03 e8 90 00 } //01 00 
		$a_03_19 = {f1 40 00 8b 4d 90 01 01 e8 90 01 02 00 00 89 45 90 01 01 83 7d 90 01 01 00 74 90 01 01 8b 90 01 03 8b 90 01 03 ff 55 90 00 } //01 00 
		$a_03_20 = {68 b0 12 41 00 8d 45 90 01 01 50 e8 90 01 01 41 00 00 90 00 } //01 00 
		$a_03_21 = {0f b6 d0 85 d2 74 90 01 01 68 90 90 f1 40 00 8b 4d 90 01 01 e8 90 00 } //01 00 
		$a_03_22 = {83 c0 01 89 85 90 01 03 ff 81 bd 90 01 02 ff ff 90 01 04 7d 90 01 01 8b 85 90 01 02 ff ff 99 b9 90 01 01 00 00 00 f7 f9 89 90 00 } //01 00 
		$a_02_23 = {2e 67 69 66 00 90 02 0a 72 75 6e 6d 65 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}