
rule Worm_Win32_Seefiak_A{
	meta:
		description = "Worm:Win32/Seefiak.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 05 00 "
		
	strings :
		$a_01_0 = {66 00 75 00 6e 00 63 00 69 00 6f 00 6e 00 65 00 73 00 2e 00 70 00 68 00 70 00 3f 00 6e 00 69 00 63 00 6b 00 3d 00 } //01 00  funciones.php?nick=
		$a_01_1 = {41 00 64 00 69 00 6f 00 73 00 20 00 41 00 64 00 6d 00 69 00 6e 00 21 00 } //01 00  Adios Admin!
		$a_01_2 = {45 00 6c 00 20 00 73 00 70 00 72 00 65 00 61 00 64 00 20 00 66 00 61 00 63 00 65 00 20 00 79 00 61 00 20 00 65 00 73 00 74 00 61 00 20 00 61 00 63 00 74 00 69 00 76 00 61 00 64 00 6f 00 } //01 00  El spread face ya esta activado
		$a_01_3 = {73 00 70 00 72 00 65 00 61 00 64 00 2e 00 6d 00 73 00 6e 00 2e 00 66 00 61 00 6c 00 73 00 65 00 } //00 00  spread.msn.false
	condition:
		any of ($a_*)
 
}
rule Worm_Win32_Seefiak_A_2{
	meta:
		description = "Worm:Win32/Seefiak.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 05 00 "
		
	strings :
		$a_01_0 = {75 00 66 00 63 00 6e 00 6f 00 69 00 65 00 6e 00 2e 00 73 00 68 00 70 00 3f 00 70 00 69 00 6e 00 6b 00 63 00 00 00 3d 00 } //01 00 
		$a_01_1 = {64 00 41 00 6f 00 69 00 20 00 73 00 64 00 41 00 69 00 6d 00 21 00 6e 00 } //01 00  dAoi sdAim!n
		$a_01_2 = {6c 00 45 00 73 00 20 00 72 00 70 00 61 00 65 00 20 00 64 00 73 00 6d 00 20 00 6e 00 61 00 79 00 65 00 20 00 74 00 73 00 20 00 61 00 63 00 61 00 69 00 74 00 61 00 76 00 6f 00 64 00 } //01 00  lEs rpae dsm naye ts acaitavod
		$a_01_3 = {70 00 73 00 65 00 72 00 64 00 61 00 6d 00 2e 00 6e 00 73 00 66 00 2e 00 6c 00 61 00 65 00 73 00 } //00 00  pserdam.nsf.laes
	condition:
		any of ($a_*)
 
}