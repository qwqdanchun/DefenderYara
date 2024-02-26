
rule VirTool_Win32_Drobedesz_A_MTB{
	meta:
		description = "VirTool:Win32/Drobedesz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {55 8b ec 6a fe 68 10 38 40 00 68 7f 16 40 00 64 a1 00 00 00 00 50 83 ec 14 a1 04 50 40 00 31 45 f8 33 c5 89 45 e4 53 56 57 50 90 01 03 64 a3 00 00 00 00 89 65 e8 6a 10 90 01 06 3d f1 90 00 } //01 00 
		$a_03_1 = {c7 45 fc fe ff ff ff 68 c4 32 40 00 90 01 06 8b f0 85 f6 90 01 02 68 d0 32 40 00 56 8b 3d 50 30 40 00 90 01 02 8b d8 85 db 90 01 02 68 e4 32 40 00 56 90 01 02 8b 90 00 } //01 00 
		$a_03_2 = {8b d8 89 9d 04 fd ff ff 85 db 90 01 06 83 3c bd 88 53 40 00 00 90 01 06 6a 40 68 00 30 00 00 ff 34 bd 7c 53 40 00 6a 00 53 90 01 06 89 45 f8 85 c0 90 01 06 6a 00 ff 34 bd 7c 53 40 00 ff 34 bd 88 53 40 00 50 53 90 01 06 85 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}