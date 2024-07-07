
rule Ransom_Win32_VB_Globster{
	meta:
		description = "Ransom:Win32/VB.Globster,SIGNATURE_TYPE_PEHSTR_EXT,1e 00 1e 00 18 00 00 "
		
	strings :
		$a_01_0 = {52 65 69 6e 6b 61 72 6e 61 74 69 6f 6e 65 72 } //2 Reinkarnationer
		$a_01_1 = {42 79 67 6e 69 6e 67 73 76 61 65 72 6b 65 72 38 } //2 Bygningsvaerker8
		$a_01_2 = {43 75 72 74 61 69 6c 73 35 } //2 Curtails5
		$a_01_3 = {46 65 63 6b 6c 65 73 73 6e 65 73 73 } //2 Fecklessness
		$a_01_4 = {43 61 62 62 61 67 69 6e 67 } //2 Cabbaging
		$a_01_5 = {55 64 73 74 64 65 6c 73 65 6e 73 } //2 Udstdelsens
		$a_01_6 = {45 79 65 67 6c 61 73 73 65 73 33 } //2 Eyeglasses3
		$a_01_7 = {42 61 74 68 6f 63 68 72 6f 6d 65 35 } //2 Bathochrome5
		$a_01_8 = {55 6e 70 6c 61 6e 6e 65 64 6c 79 } //2 Unplannedly
		$a_01_9 = {56 65 72 73 69 66 69 63 65 72 65 73 34 } //2 Versificeres4
		$a_01_10 = {42 65 63 61 73 73 6f 63 6b 65 64 36 } //2 Becassocked6
		$a_01_11 = {56 69 64 74 73 6b 75 65 6e 64 65 30 } //2 Vidtskuende0
		$a_01_12 = {53 70 69 73 65 73 74 75 65 72 } //2 Spisestuer
		$a_01_13 = {50 61 75 73 65 72 69 6e 67 65 72 6e 65 } //2 Pauseringerne
		$a_01_14 = {53 75 6d 6d 61 72 69 7a 61 74 69 6f 6e 31 } //2 Summarization1
		$a_01_15 = {41 70 68 6f 74 69 63 35 } //2 Aphotic5
		$a_01_16 = {4f 76 65 72 63 61 70 69 74 61 6c 69 73 61 74 69 6f 6e } //2 Overcapitalisation
		$a_01_17 = {42 65 61 63 6f 6e 77 69 73 65 } //2 Beaconwise
		$a_01_18 = {53 6b 69 6c 6c 69 6e 67 73 74 72 79 6b 6b 65 6e 65 73 38 } //2 Skillingstrykkenes8
		$a_01_19 = {53 70 69 72 61 6c 62 75 6e 64 65 6e 73 } //2 Spiralbundens
		$a_01_20 = {53 75 62 73 74 61 6e 74 69 65 6c 6c 65 } //2 Substantielle
		$a_01_21 = {46 69 6c 6d 61 74 69 73 65 72 69 6e 67 65 72 } //2 Filmatiseringer
		$a_01_22 = {46 72 6f 75 7a 69 65 73 74 } //2 Frouziest
		$a_01_23 = {53 75 70 65 72 73 75 70 65 72 69 6f 72 } //2 Supersuperior
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2+(#a_01_7  & 1)*2+(#a_01_8  & 1)*2+(#a_01_9  & 1)*2+(#a_01_10  & 1)*2+(#a_01_11  & 1)*2+(#a_01_12  & 1)*2+(#a_01_13  & 1)*2+(#a_01_14  & 1)*2+(#a_01_15  & 1)*2+(#a_01_16  & 1)*2+(#a_01_17  & 1)*2+(#a_01_18  & 1)*2+(#a_01_19  & 1)*2+(#a_01_20  & 1)*2+(#a_01_21  & 1)*2+(#a_01_22  & 1)*2+(#a_01_23  & 1)*2) >=30
 
}