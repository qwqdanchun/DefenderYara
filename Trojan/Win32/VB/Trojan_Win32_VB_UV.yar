
rule Trojan_Win32_VB_UV{
	meta:
		description = "Trojan:Win32/VB.UV,SIGNATURE_TYPE_PEHSTR,3f 00 3e 00 0b 00 00 "
		
	strings :
		$a_01_0 = {53 74 75 64 69 6f 5c 56 42 39 38 5c 56 42 36 2e 4f 4c 42 } //10 Studio\VB98\VB6.OLB
		$a_01_1 = {47 65 74 41 73 79 6e 63 4b 65 79 53 74 61 74 65 } //10 GetAsyncKeyState
		$a_01_2 = {4d 00 4f 00 4e 00 45 00 59 00 20 00 4d 00 41 00 4b 00 45 00 52 00 5c 00 64 00 65 00 70 00 75 00 72 00 61 00 64 00 6f 00 72 00 } //10 MONEY MAKER\depurador
		$a_01_3 = {5c 00 6e 00 75 00 52 00 5c 00 6e 00 6f 00 69 00 73 00 72 00 65 00 56 00 74 00 6e 00 65 00 72 00 72 00 75 00 43 00 5c 00 73 00 77 00 6f 00 64 00 6e 00 69 00 57 00 5c 00 74 00 66 00 6f 00 73 00 6f 00 72 00 63 00 69 00 4d 00 5c 00 65 00 72 00 61 00 77 00 74 00 66 00 6f 00 53 00 5c 00 52 00 45 00 53 00 55 00 5f 00 54 00 4e 00 45 00 52 00 52 00 55 00 43 00 5f 00 59 00 45 00 4b 00 48 00 } //10 \nuR\noisreVtnerruC\swodniW\tfosorciM\erawtfoS\RESU_TNERRUC_YEKH
		$a_01_4 = {48 00 6f 00 73 00 74 00 3a 00 20 00 76 00 69 00 72 00 74 00 75 00 61 00 6c 00 6d 00 61 00 63 00 68 00 69 00 6e 00 65 00 2d 00 75 00 70 00 64 00 61 00 74 00 65 00 2e 00 63 00 6f 00 6d 00 } //10 Host: virtualmachine-update.com
		$a_01_5 = {61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //10 autorun.inf
		$a_01_6 = {42 00 61 00 6a 00 69 00 6f 00 6e 00 65 00 74 00 20 00 2d 00 20 00 42 00 61 00 6e 00 63 00 6f 00 20 00 64 00 65 00 6c 00 } //1 Bajionet - Banco del
		$a_01_7 = {42 00 69 00 65 00 6e 00 76 00 65 00 6e 00 69 00 64 00 6f 00 20 00 61 00 20 00 42 00 61 00 6e 00 63 00 61 00 6e 00 65 00 74 00 } //1 Bienvenido a Bancanet
		$a_01_8 = {42 00 61 00 6e 00 6f 00 72 00 74 00 65 00 20 00 7c 00 20 00 45 00 6c 00 20 00 42 00 61 00 6e 00 63 00 6f 00 20 00 46 00 75 00 65 00 72 00 74 00 65 00 } //1 Banorte | El Banco Fuerte
		$a_01_9 = {47 00 45 00 54 00 20 00 2f 00 77 00 65 00 62 00 73 00 2e 00 74 00 78 00 74 00 20 00 48 00 54 00 54 00 50 00 2f 00 31 00 2e 00 30 00 } //1 GET /webs.txt HTTP/1.0
		$a_01_10 = {47 00 75 00 73 00 61 00 6e 00 69 00 74 00 6f 00 2e 00 65 00 78 00 65 00 } //1 Gusanito.exe
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_01_5  & 1)*10+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=62
 
}