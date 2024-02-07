
rule Worm_Win32_Autorun_gen_BO{
	meta:
		description = "Worm:Win32/Autorun.gen!BO,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 07 00 04 00 00 05 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //05 00  MSVBVM60.DLL
		$a_00_1 = {ff 50 04 8b 4e 78 8b 3d 10 12 40 00 ba 9c 36 72 00 ff d7 8b 4e 78 ba bc 36 72 00 83 c1 04 ff d7 8b 4e 78 ba dc 36 72 00 83 c1 08 ff d7 8b 4e 78 } //01 00 
		$a_00_2 = {2a 00 5c 00 41 00 44 00 3a 00 5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 41 00 64 00 6d 00 69 00 6e 00 69 00 73 00 74 00 72 00 61 00 64 00 6f 00 72 00 5c 00 4d 00 69 00 73 00 20 00 64 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 6f 00 73 00 5c 00 4d 00 69 00 73 00 20 00 61 00 72 00 63 00 68 00 69 00 76 00 6f 00 73 00 5c 00 54 00 4f 00 44 00 4f 00 20 00 44 00 45 00 20 00 56 00 49 00 53 00 55 00 41 00 4c 00 20 00 53 00 54 00 55 00 44 00 49 00 4f 00 20 00 36 00 2e 00 30 00 5c 00 4c 00 69 00 62 00 72 00 65 00 20 00 53 00 61 00 6c 00 76 00 61 00 64 00 6f 00 5c 00 46 00 72 00 65 00 65 00 64 00 6f 00 6d 00 2e 00 76 00 62 00 70 00 } //01 00  *\AD:\Documents and Settings\Administrador\Mis documentos\Mis archivos\TODO DE VISUAL STUDIO 6.0\Libre Salvado\Freedom.vbp
		$a_02_3 = {53 4d 53 53 20 20 2d 20 5b 20 4c 69 62 72 65 20 41 2e 5a 2e 56 2e 20 56 65 72 73 69 6f 6e 20 20 30 2e 90 10 02 00 20 5d 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}