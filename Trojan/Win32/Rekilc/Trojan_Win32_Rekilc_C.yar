
rule Trojan_Win32_Rekilc_C{
	meta:
		description = "Trojan:Win32/Rekilc.C,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 18 00 00 02 00 "
		
	strings :
		$a_01_0 = {64 78 64 69 61 67 00 } //02 00 
		$a_01_1 = {6d 73 63 6f 6e 66 69 67 00 } //02 00 
		$a_01_2 = {43 6f 4d 75 72 44 00 } //03 00 
		$a_01_3 = {64 78 64 69 61 64 64 64 67 00 } //02 00  硤楤摡摤g
		$a_01_4 = {50 65 72 66 6f 72 6d 61 6e 63 65 58 00 } //02 00 
		$a_01_5 = {66 69 6e 64 70 72 6f 63 63 65 73 73 00 } //02 00 
		$a_01_6 = {42 75 74 74 6f 6e 61 63 74 69 76 65 } //03 00  Buttonactive
		$a_01_7 = {42 6f 4c 45 74 2e 55 73 65 72 43 6f 6e 74 72 6f 6c } //03 00  BoLEt.UserControl
		$a_01_8 = {43 61 73 61 42 6f 6e 69 74 61 53 00 } //03 00  慃慳潂楮慴S
		$a_01_9 = {46 69 63 75 73 2e 55 73 65 72 43 6f 6e 74 72 6f 6c } //01 00  Ficus.UserControl
		$a_01_10 = {62 00 74 00 6e 00 4e 00 65 00 78 00 74 00 00 00 } //01 00 
		$a_01_11 = {69 00 64 00 3d 00 62 00 74 00 6e 00 00 00 } //02 00 
		$a_03_12 = {46 6f 72 6d 31 90 01 05 46 6f 72 6d 31 90 01 0e 46 6f 72 6d 31 00 35 90 00 } //03 00 
		$a_02_13 = {50 00 72 00 6f 00 63 00 65 00 73 00 73 00 49 00 64 00 90 02 30 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 70 00 61 00 74 00 68 00 90 00 } //03 00 
		$a_02_14 = {50 00 72 00 6f 00 63 00 65 00 73 00 73 00 49 00 64 00 90 02 30 6e 00 65 00 78 00 74 00 90 00 } //03 00 
		$a_02_15 = {43 00 61 00 70 00 74 00 69 00 6f 00 6e 00 90 02 10 4d 00 65 00 64 00 69 00 61 00 50 00 6c 00 61 00 79 00 65 00 72 00 90 02 20 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 49 00 64 00 90 00 } //03 00 
		$a_02_16 = {6e 00 65 00 78 00 74 00 90 02 10 53 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 66 00 72 00 6f 00 6d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 90 00 } //03 00 
		$a_02_17 = {43 00 61 00 70 00 74 00 69 00 6f 00 6e 00 90 02 10 53 00 65 00 74 00 75 00 70 00 5f 00 70 00 72 00 6f 00 64 00 75 00 63 00 74 00 90 00 } //01 00 
		$a_01_18 = {57 00 4d 00 5f 00 48 00 54 00 4d 00 4c 00 5f 00 47 00 45 00 54 00 4f 00 42 00 4a 00 45 00 43 00 54 00 } //01 00  WM_HTML_GETOBJECT
		$a_01_19 = {49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5f 00 53 00 65 00 72 00 76 00 65 00 72 00 } //01 00  Internet Explorer_Server
		$a_03_20 = {53 00 74 00 72 00 69 00 6e 00 67 00 46 00 69 00 6c 00 65 00 49 00 6e 00 66 00 6f 00 90 02 10 30 00 34 00 30 00 39 00 30 00 34 00 42 00 30 00 90 00 } //01 00 
		$a_01_21 = {46 69 6e 64 57 69 6e 64 6f 77 41 00 } //01 00  楆摮楗摮睯A
		$a_01_22 = {53 68 6f 77 57 69 6e 64 6f 77 00 } //02 00 
		$a_02_23 = {53 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 66 00 72 00 6f 00 6d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 90 02 10 77 00 69 00 6e 00 6d 00 67 00 6d 00 74 00 73 00 3a 00 90 02 10 45 00 78 00 65 00 63 00 51 00 75 00 65 00 72 00 79 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}