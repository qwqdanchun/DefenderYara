
rule Trojan_BAT_Aggah_A{
	meta:
		description = "Trojan:BAT/Aggah.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 09 00 00 "
		
	strings :
		$a_02_0 = {68 00 65 00 6c 00 6c 00 6f 00 77 00 65 00 65 00 6e 00 68 00 61 00 67 00 67 00 61 00 2e 00 64 00 64 00 6e 00 73 00 2e 00 6e 00 65 00 74 00 2c 00 68 00 65 00 6c 00 6c 00 6f 00 77 00 65 00 65 00 6e 00 68 00 61 00 67 00 67 00 61 00 90 10 02 00 2e 00 64 00 64 00 6e 00 73 00 2e 00 6e 00 65 00 74 00 } //1
		$a_02_1 = {68 65 6c 6c 6f 77 65 65 6e 68 61 67 67 61 2e 64 64 6e 73 2e 6e 65 74 2c 68 65 6c 6c 6f 77 65 65 6e 68 61 67 67 61 90 10 02 00 2e 64 64 6e 73 2e 6e 65 74 } //1
		$a_80_2 = {53 45 4c 45 43 54 20 2a 20 46 52 4f 4d 20 46 69 72 65 77 61 6c 6c 50 72 6f 64 75 63 74 } //SELECT * FROM FirewallProduct  1
		$a_80_3 = {4e 75 63 6c 65 61 72 20 45 78 70 6c 6f 73 69 6f 6e } //Nuclear Explosion  1
		$a_80_4 = {32 34 34 35 2c 32 34 34 35 2c 32 34 34 35 } //2445,2445,2445  1
		$a_80_5 = {52 56 5f 4d 55 54 45 58 2d 57 69 6e 64 6f 77 73 55 70 64 61 74 65 53 79 73 74 65 6e 33 32 } //RV_MUTEX-WindowsUpdateSysten32  1
		$a_02_6 = {72 00 65 00 76 00 65 00 6e 00 67 00 65 00 72 00 78 00 90 10 03 00 2e 00 73 00 79 00 74 00 65 00 73 00 2e 00 6e 00 65 00 74 00 } //1
		$a_02_7 = {72 65 76 65 6e 67 65 72 78 90 10 03 00 2e 73 79 74 65 73 2e 6e 65 74 } //1
		$a_80_8 = {32 33 33 36 2c 32 33 33 36 2c 32 33 33 36 2c 32 33 33 36 2c 32 33 33 36 } //2336,2336,2336,2336,2336  1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_80_2  & 1)*1+(#a_80_3  & 1)*1+(#a_80_4  & 1)*1+(#a_80_5  & 1)*1+(#a_02_6  & 1)*1+(#a_02_7  & 1)*1+(#a_80_8  & 1)*1) >=3
 
}