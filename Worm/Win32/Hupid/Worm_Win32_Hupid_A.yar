
rule Worm_Win32_Hupid_A{
	meta:
		description = "Worm:Win32/Hupid.A,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {45 00 3a 00 5c 00 43 00 6f 00 62 00 61 00 20 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 56 00 69 00 72 00 75 00 73 00 5c 00 42 00 52 00 52 00 5c 00 4d 00 4f 00 54 00 54 00 4f 00 5f 00 42 00 52 00 52 00 2e 00 76 00 62 00 70 00 } //01 00  E:\Coba Software\Virus\BRR\MOTTO_BRR.vbp
		$a_01_1 = {4d 00 72 00 48 00 65 00 6c 00 6c 00 6f 00 77 00 65 00 65 00 6e 00 2e 00 73 00 63 00 72 00 } //01 00  MrHelloween.scr
		$a_01_2 = {50 00 65 00 72 00 73 00 69 00 73 00 74 00 4d 00 6f 00 6e 00 69 00 6b 00 65 00 72 00 3d 00 66 00 69 00 6c 00 65 00 3a 00 2f 00 2f 00 42 00 52 00 52 00 5c 00 46 00 6f 00 6c 00 64 00 65 00 72 00 2e 00 68 00 74 00 74 00 } //00 00  PersistMoniker=file://BRR\Folder.htt
	condition:
		any of ($a_*)
 
}