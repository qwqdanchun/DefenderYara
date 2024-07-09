
rule Trojan_BAT_Mozifox_A{
	meta:
		description = "Trojan:BAT/Mozifox.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {00 46 69 72 65 66 6f 78 4b 75 72 00 } //1 䘀物晥硯畋r
		$a_00_1 = {00 67 65 74 5f 66 69 72 65 66 6f 78 00 } //1
		$a_00_2 = {63 6f 6d 6d 61 6e 64 65 72 2e 66 69 72 65 66 6f 78 2e 65 78 65 00 } //1
		$a_02_3 = {5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 ?? ?? 4c 00 69 00 76 00 65 00 20 00 4d 00 65 00 73 00 73 00 65 00 6e 00 67 00 65 00 72 00 20 00 55 00 70 00 64 00 61 00 74 00 65 00 72 00 } //1
		$a_02_4 = {73 00 65 00 72 00 76 00 65 00 72 00 3d 00 ?? ?? 3b 00 20 00 75 00 69 00 64 00 3d 00 ?? ?? 3b 00 20 00 70 00 77 00 64 00 3d 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_02_3  & 1)*1+(#a_02_4  & 1)*1) >=5
 
}