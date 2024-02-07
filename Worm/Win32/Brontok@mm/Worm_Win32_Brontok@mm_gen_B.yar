
rule Worm_Win32_Brontok@mm_gen_B{
	meta:
		description = "Worm:Win32/Brontok@mm.gen!B,SIGNATURE_TYPE_PEHSTR,05 00 03 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 45 4e 53 41 53 49 5f 41 } //01 00  SENSASI_A
		$a_01_1 = {23 00 49 00 4e 00 49 00 5f 00 53 00 65 00 6e 00 73 00 61 00 73 00 69 00 5f 00 41 00 } //01 00  #INI_Sensasi_A
		$a_01_2 = {5c 53 65 6e 73 46 6f 6c 64 4e 65 74 44 6f 6d 4c 69 73 74 2e 74 78 74 } //01 00  \SensFoldNetDomList.txt
		$a_01_3 = {53 65 6e 73 61 73 69 2e 41 } //01 00  Sensasi.A
		$a_01_4 = {53 65 6e 73 61 73 69 46 6f 72 6d } //01 00  SensasiForm
		$a_01_5 = {54 6d 72 42 72 6f 6e 74 6f 6b } //01 00  TmrBrontok
		$a_01_6 = {5c 00 4f 00 6b 00 2d 00 53 00 65 00 6e 00 64 00 4d 00 61 00 69 00 6c 00 2d 00 53 00 65 00 6e 00 73 00 2d 00 61 00 73 00 69 00 } //01 00  \Ok-SendMail-Sens-asi
		$a_01_7 = {2a 00 5c 00 41 00 46 00 3a 00 5c 00 56 00 50 00 52 00 4f 00 4a 00 45 00 43 00 54 00 5c 00 4f 00 4b 00 5c 00 35 00 5c 00 53 00 45 00 4e 00 53 00 41 00 53 00 49 00 2e 00 41 00 5c 00 53 00 65 00 6e 00 73 00 61 00 73 00 69 00 2e 00 41 00 2e 00 76 00 62 00 70 00 } //00 00  *\AF:\VPROJECT\OK\5\SENSASI.A\Sensasi.A.vbp
	condition:
		any of ($a_*)
 
}