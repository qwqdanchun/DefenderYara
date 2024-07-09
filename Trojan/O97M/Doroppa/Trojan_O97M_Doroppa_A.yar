
rule Trojan_O97M_Doroppa_A{
	meta:
		description = "Trojan:O97M/Doroppa.A,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_00_0 = {3c 21 5b 43 44 41 54 41 5b 20 76 61 72 20 72 20 3d 20 6e 65 77 20 41 63 74 69 76 65 58 4f 62 6a 65 63 74 28 22 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 22 29 2e 52 75 6e 28 } //1 <![CDATA[ var r = new ActiveXObject(""WScript.Shell"").Run(
		$a_02_1 = {72 65 67 73 76 72 33 32 2e 65 78 65 20 2f 73 20 2f 6e 20 2f 75 20 2f 69 3a 22 20 2b 20 [0-10] 20 2b 20 22 20 73 63 72 6f 62 6a 2e 64 6c 6c } //1
		$a_02_2 = {74 65 6d 70 5f 64 69 72 20 2b 20 22 5c [0-10] 2e 74 78 74 } //1
		$a_02_3 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 53 63 72 69 70 74 69 6e 67 2e 46 69 6c 65 53 79 73 74 65 6d 4f 62 6a 65 63 74 22 29 2e 4f 70 65 6e 54 65 78 74 46 69 6c 65 28 [0-10] 2c 20 32 2c 20 54 72 75 65 29 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1) >=3
 
}