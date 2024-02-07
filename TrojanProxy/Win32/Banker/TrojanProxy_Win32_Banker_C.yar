
rule TrojanProxy_Win32_Banker_C{
	meta:
		description = "TrojanProxy:Win32/Banker.C,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 04 00 00 06 00 "
		
	strings :
		$a_02_0 = {45 78 70 6c 6f 72 65 72 5c 52 75 6e 22 20 2f 76 20 22 50 6f 6c 69 74 63 73 22 20 2f 64 20 43 3a 5c 90 02 08 2e 65 78 65 90 00 } //03 00 
		$a_00_1 = {70 00 72 00 61 00 71 00 75 00 65 00 6d 00 3d 00 68 00 61 00 63 00 6b 00 69 00 6e 00 68 00 6f 00 2e 00 63 00 63 00 40 00 } //03 00  praquem=hackinho.cc@
		$a_00_2 = {74 00 69 00 74 00 75 00 6c 00 6f 00 3d 00 5b 00 49 00 5d 00 5b 00 4e 00 5d 00 5b 00 46 00 5d 00 5b 00 45 00 5d 00 5b 00 43 00 5d 00 5b 00 54 00 5d 00 2d 00 } //03 00  titulo=[I][N][F][E][C][T]-
		$a_00_3 = {74 00 65 00 78 00 74 00 6f 00 3d 00 69 00 6e 00 66 00 65 00 63 00 74 00 61 00 64 00 6f 00 } //00 00  texto=infectado
	condition:
		any of ($a_*)
 
}