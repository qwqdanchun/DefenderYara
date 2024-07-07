
rule Worm_Win32_Autorun_ON{
	meta:
		description = "Worm:Win32/Autorun.ON,SIGNATURE_TYPE_PEHSTR,22 00 20 00 07 00 00 "
		
	strings :
		$a_01_0 = {56 42 41 36 2e 44 4c 4c 00 } //10
		$a_01_1 = {5c 00 76 00 69 00 72 00 75 00 73 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 31 00 2e 00 76 00 62 00 70 00 } //10 \virus\Project1.vbp
		$a_01_2 = {66 00 61 00 74 00 61 00 6c 00 73 00 79 00 73 00 74 00 65 00 6d 00 65 00 72 00 72 00 6f 00 72 00 2e 00 6e 00 61 00 72 00 6f 00 64 00 2e 00 72 00 75 00 } //1 fatalsystemerror.narod.ru
		$a_01_3 = {76 00 69 00 72 00 2e 00 68 00 74 00 6d 00 } //1 vir.htm
		$a_01_4 = {74 00 65 00 65 00 6e 00 5f 00 6d 00 6f 00 76 00 69 00 65 00 2e 00 65 00 78 00 65 00 } //1 teen_movie.exe
		$a_01_5 = {4f 00 50 00 45 00 4e 00 3d 00 74 00 65 00 65 00 6e 00 5f 00 6d 00 6f 00 76 00 69 00 65 00 2e 00 65 00 78 00 65 00 } //1 OPEN=teen_movie.exe
		$a_01_6 = {52 61 73 45 6e 75 6d 43 6f 6e 6e 65 63 74 69 6f 6e 73 41 } //10 RasEnumConnectionsA
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*10) >=32
 
}