
rule PWS_Win32_Fakemsn_F{
	meta:
		description = "PWS:Win32/Fakemsn.F,SIGNATURE_TYPE_PEHSTR,06 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 6c 67 75 65 6d 20 6d 65 20 61 6a 75 64 61 20 61 20 69 6e 74 65 6e 64 65 72 21 } //01 00  alguem me ajuda a intender!
		$a_01_1 = {6a 65 72 61 74 69 6e 68 6f 40 68 6f 74 6d 61 69 6c 2e 63 6f 6d } //01 00  jeratinho@hotmail.com
		$a_01_2 = {5c 00 42 00 6f 00 72 00 6c 00 61 00 6e 00 64 00 5c 00 44 00 65 00 6c 00 70 00 68 00 69 00 5c 00 } //01 00  \Borland\Delphi\
		$a_01_3 = {76 00 65 00 6c 00 20 00 65 00 6e 00 74 00 72 00 61 00 72 00 20 00 63 00 6f 00 6d 00 20 00 73 00 65 00 75 00 20 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4c 00 69 00 76 00 65 00 20 00 49 00 44 00 } //01 00  vel entrar com seu Windows Live ID
		$a_01_4 = {45 00 78 00 61 00 6d 00 70 00 6c 00 65 00 35 00 35 00 35 00 40 00 68 00 6f 00 74 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //01 00  Example555@hotmail.com
		$a_01_5 = {62 00 61 00 69 00 78 00 61 00 63 00 6f 00 6e 00 66 00 69 00 67 00 20 00 74 00 72 00 75 00 65 00 20 00 2d 00 20 00 63 00 6f 00 6e 00 65 00 63 00 74 00 61 00 64 00 6f 00 } //00 00  baixaconfig true - conectado
	condition:
		any of ($a_*)
 
}