
rule Worm_Win32_Combra_H{
	meta:
		description = "Worm:Win32/Combra.H,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 07 00 00 05 00 "
		
	strings :
		$a_00_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 } //02 00  SOFTWARE\Borland\Delphi
		$a_01_1 = {85 db 7e 2c be 01 00 00 00 8d 45 e4 8b 55 ec 8a 54 3a ff 8b 4d fc 8a 4c 31 ff 32 d1 } //01 00 
		$a_01_2 = {50 65 6c 6f 4e 6f 6d 65 0a 54 45 78 65 63 45 4d } //01 00  敐潬潎敭吊硅捥䵅
		$a_01_3 = {53 53 4c 20 73 74 61 74 75 73 3a 20 22 25 73 } //01 00  SSL status: "%s
		$a_01_4 = {41 72 69 61 6c 22 20 63 6f 6c 6f 72 3d 22 23 61 35 30 31 30 32 } //01 00  Arial" color="#a50102
		$a_01_5 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 41 42 } //01 00  Software\Microsoft\WAB
		$a_01_6 = {2e 63 6f 6d 2e 62 72 } //00 00  .com.br
	condition:
		any of ($a_*)
 
}