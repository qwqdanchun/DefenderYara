
rule Backdoor_Win32_VB_ZA{
	meta:
		description = "Backdoor:Win32/VB.ZA,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 05 00 "
		
	strings :
		$a_01_0 = {5c 00 4c 00 75 00 69 00 73 00 43 00 61 00 72 00 6c 00 6f 00 73 00 5c 00 45 00 73 00 63 00 72 00 69 00 74 00 6f 00 72 00 69 00 6f 00 5c 00 50 00 72 00 6f 00 79 00 65 00 63 00 74 00 6f 00 73 00 20 00 76 00 69 00 73 00 75 00 61 00 6c 00 20 00 62 00 61 00 73 00 69 00 63 00 20 00 36 00 2e 00 30 00 5c 00 4d 00 69 00 20 00 74 00 72 00 6f 00 79 00 61 00 6e 00 6f 00 5c 00 42 00 49 00 4f 00 48 00 41 00 5a 00 41 00 52 00 44 00 20 00 33 00 2e 00 30 00 5c 00 52 00 65 00 6d 00 6f 00 74 00 65 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 28 00 31 00 29 00 5c 00 53 00 65 00 72 00 76 00 65 00 72 00 5c 00 53 00 65 00 72 00 76 00 65 00 72 00 2e 00 76 00 62 00 70 00 } //01 00  \LuisCarlos\Escritorio\Proyectos visual basic 6.0\Mi troyano\BIOHAZARD 3.0\Remote Explorer(1)\Server\Server.vbp
		$a_01_1 = {76 62 34 70 72 6f 6a 65 63 74 56 62 2e 53 6f 63 6b 65 74 } //00 00  vb4projectVb.Socket
	condition:
		any of ($a_*)
 
}