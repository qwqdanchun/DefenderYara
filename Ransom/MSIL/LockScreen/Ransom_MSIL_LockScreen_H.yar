
rule Ransom_MSIL_LockScreen_H{
	meta:
		description = "Ransom:MSIL/LockScreen.H,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 00 4c 00 45 00 41 00 53 00 45 00 20 00 44 00 4f 00 20 00 4e 00 4f 00 54 00 20 00 53 00 48 00 55 00 54 00 20 00 44 00 4f 00 57 00 4e 00 20 00 4f 00 52 00 20 00 52 00 45 00 53 00 54 00 41 00 52 00 54 00 20 00 59 00 4f 00 55 00 52 00 20 00 43 00 4f 00 4d 00 50 00 55 00 54 00 45 00 52 00 2e 00 20 00 43 00 75 00 73 00 74 00 6f 00 6d 00 65 00 72 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 20 00 31 00 2d 00 38 00 34 00 34 00 2d 00 34 00 35 00 39 00 2d 00 38 00 38 00 38 00 32 00 } //01 00 
		$a_01_1 = {59 00 6f 00 75 00 72 00 20 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 20 00 4b 00 65 00 79 00 20 00 69 00 73 00 20 00 6e 00 6f 00 74 00 20 00 6d 00 61 00 74 00 63 00 68 00 } //00 00 
	condition:
		any of ($a_*)
 
}