
rule Trojan_Win32_Woozlist_A{
	meta:
		description = "Trojan:Win32/Woozlist.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 08 00 00 "
		
	strings :
		$a_01_0 = {50 72 6f 63 65 73 73 4d 6f 69 6e 74 65 72 2e 70 64 62 } //1 ProcessMointer.pdb
		$a_01_1 = {5c 6d 6f 69 6e 74 65 72 78 36 34 5c 6f 62 6a 66 72 65 } //1 \mointerx64\objfre
		$a_01_2 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 54 00 63 00 70 00 } //1 \Device\Tcp
		$a_03_3 = {54 72 61 6e 73 70 6f 72 74 41 64 64 72 65 73 73 [0-20] 43 6f 6e 6e 65 63 74 69 6f 6e 43 6f 6e 74 65 78 74 } //1
		$a_01_4 = {5c 00 52 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 5c 00 4d 00 61 00 63 00 68 00 69 00 6e 00 65 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 5c 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 53 00 65 00 74 00 30 00 30 00 31 00 5c 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 5c 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 4d 00 6f 00 69 00 6e 00 74 00 } //1 \Registry\Machine\System\ControlSet001\Services\ProcessMoint
		$a_01_5 = {31 30 31 2e 32 32 36 2e 34 2e 36 } //1 101.226.4.6
		$a_01_6 = {23 32 30 34 38 31 21 } //1 #20481!
		$a_01_7 = {68 2e 62 62 79 79 6a 79 2e 63 6f 6d } //1 h.bbyyjy.com
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=6
 
}