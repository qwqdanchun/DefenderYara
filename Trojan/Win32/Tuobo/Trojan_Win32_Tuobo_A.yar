
rule Trojan_Win32_Tuobo_A{
	meta:
		description = "Trojan:Win32/Tuobo.A,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0c 00 05 00 00 05 00 "
		
	strings :
		$a_01_0 = {2e 79 6f 75 74 75 62 65 2e 63 6f 6d 2f 77 61 74 63 68 3f 76 3d } //02 00  .youtube.com/watch?v=
		$a_03_1 = {2f 66 6f 74 6f 73 2f 90 02 10 2e 65 78 65 90 00 } //01 00 
		$a_00_2 = {77 77 77 2e 66 72 65 65 77 65 62 74 6f 77 6e 2e 63 6f 6d } //01 00  www.freewebtown.com
		$a_01_3 = {43 6f 6e 66 69 67 75 72 61 64 61 } //05 00  Configurada
		$a_01_4 = {59 6f 75 54 75 62 65 20 43 6f 72 70 6f 72 61 74 69 6f 6e 2e 20 54 6f 64 6f 73 20 6f 73 20 64 69 72 65 69 74 6f 73 } //00 00  YouTube Corporation. Todos os direitos
	condition:
		any of ($a_*)
 
}