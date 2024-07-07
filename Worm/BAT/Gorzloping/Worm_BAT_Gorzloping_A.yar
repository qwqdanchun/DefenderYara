
rule Worm_BAT_Gorzloping_A{
	meta:
		description = "Worm:BAT/Gorzloping.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_03_0 = {4c 6f 67 47 6f 5f 43 6c 69 65 6e 74 5f 56 90 02 02 2e 65 78 65 90 00 } //4
		$a_01_1 = {4c 00 6f 00 67 00 47 00 6f 00 20 00 28 00 4d 00 61 00 63 00 68 00 69 00 6e 00 65 00 46 00 69 00 6e 00 67 00 65 00 72 00 50 00 72 00 69 00 6e 00 74 00 } //2 LogGo (MachineFingerPrint
		$a_01_2 = {69 00 64 00 3d 00 42 00 4a 00 43 00 53 00 4d 00 61 00 69 00 6e 00 44 00 42 00 2e 00 6d 00 73 00 73 00 71 00 6c 00 2e 00 73 00 6f 00 6d 00 65 00 65 00 2e 00 63 00 6f 00 6d 00 } //2 id=BJCSMainDB.mssql.somee.com
		$a_01_3 = {43 00 6f 00 70 00 79 00 54 00 6f 00 41 00 6c 00 6c 00 44 00 72 00 69 00 76 00 65 00 73 00 00 00 41 00 64 00 64 00 54 00 6f 00 53 00 74 00 61 00 72 00 74 00 55 00 70 00 00 00 } //2
		$a_01_4 = {67 65 74 5f 55 73 65 72 4e 61 6d 65 00 67 65 74 5f 4d 61 63 68 69 6e 65 4e 61 6d 65 00 } //1
		$a_01_5 = {67 65 74 5f 44 72 69 76 65 54 79 70 65 00 44 69 72 65 63 74 6f 72 79 49 6e 66 6f 00 } //1 敧彴牄癩呥灹e楄敲瑣牯䥹普o
		$a_01_6 = {47 65 74 44 72 69 76 65 73 00 67 65 74 5f 49 73 52 65 61 64 79 00 } //1 敇䑴楲敶s敧彴獉敒摡y
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}