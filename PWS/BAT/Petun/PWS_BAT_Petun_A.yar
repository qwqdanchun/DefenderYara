
rule PWS_BAT_Petun_A{
	meta:
		description = "PWS:BAT/Petun.A,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {5b 00 46 00 69 00 72 00 73 00 74 00 20 00 52 00 75 00 6e 00 5d 00 20 00 4e 00 65 00 70 00 74 00 75 00 6e 00 65 00 20 00 2d 00 } //02 00 
		$a_01_1 = {6c 00 65 00 74 00 74 00 69 00 6e 00 67 00 20 00 79 00 6f 00 75 00 20 00 6b 00 6e 00 6f 00 77 00 20 00 74 00 68 00 61 00 74 00 20 00 79 00 6f 00 75 00 72 00 20 00 6b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 20 00 68 00 61 00 73 00 20 00 62 00 65 00 65 00 6e 00 20 00 66 00 72 00 65 00 73 00 68 00 6c 00 79 00 20 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 65 00 64 00 } //01 00 
		$a_01_2 = {50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 20 00 2f 00 76 00 20 00 45 00 6e 00 61 00 62 00 6c 00 65 00 4c 00 55 00 41 00 20 00 2f 00 74 00 20 00 52 00 45 00 47 00 5f 00 44 00 57 00 4f 00 52 00 44 00 20 00 2f 00 64 00 20 00 30 00 20 00 2f 00 66 00 } //01 00 
		$a_01_3 = {41 00 74 00 74 00 61 00 63 00 68 00 65 00 64 00 20 00 69 00 73 00 20 00 61 00 20 00 73 00 63 00 72 00 65 00 65 00 6e 00 73 00 68 00 6f 00 74 00 20 00 6f 00 66 00 20 00 74 00 68 00 65 00 20 00 76 00 69 00 63 00 74 00 69 00 6d 00 } //01 00 
		$a_01_4 = {52 00 75 00 6e 00 44 00 6c 00 6c 00 33 00 32 00 2e 00 65 00 78 00 65 00 20 00 49 00 6e 00 65 00 74 00 43 00 70 00 6c 00 2e 00 63 00 70 00 6c 00 2c 00 43 00 6c 00 65 00 61 00 72 00 4d 00 79 00 54 00 72 00 61 00 63 00 6b 00 73 00 42 00 79 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}