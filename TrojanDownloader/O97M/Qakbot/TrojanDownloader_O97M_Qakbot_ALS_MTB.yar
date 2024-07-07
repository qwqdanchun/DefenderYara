
rule TrojanDownloader_O97M_Qakbot_ALS_MTB{
	meta:
		description = "TrojanDownloader:O97M/Qakbot.ALS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {53 68 65 65 74 73 28 22 41 75 74 6f 44 72 6f 6d 22 29 2e 52 61 6e 67 65 28 22 48 31 30 22 29 20 3d 20 22 3d 46 72 69 73 6b 6f 73 28 30 2c 48 32 34 26 4b 31 37 26 4b 31 38 2c 47 31 30 2c 30 2c 30 29 } //1 Sheets("AutoDrom").Range("H10") = "=Friskos(0,H24&K17&K18,G10,0,0)
		$a_01_1 = {53 68 65 65 74 73 28 22 41 75 74 6f 44 72 6f 6d 22 29 2e 52 61 6e 67 65 28 22 48 31 31 22 29 20 3d 20 22 3d 46 72 69 73 6b 6f 73 28 30 2c 48 32 35 26 4b 31 37 26 4b 31 38 2c 47 31 31 2c 30 2c 30 29 } //1 Sheets("AutoDrom").Range("H11") = "=Friskos(0,H25&K17&K18,G11,0,0)
		$a_01_2 = {53 68 65 65 74 73 28 22 41 75 74 6f 44 72 6f 6d 22 29 2e 52 61 6e 67 65 28 22 48 31 32 22 29 20 3d 20 22 3d 46 72 69 73 6b 6f 73 28 30 2c 48 32 36 26 4b 31 37 26 4b 31 38 2c 47 31 32 2c 30 2c 30 29 } //1 Sheets("AutoDrom").Range("H12") = "=Friskos(0,H26&K17&K18,G12,0,0)
		$a_01_3 = {53 68 65 65 74 73 28 22 41 75 74 6f 44 72 6f 6d 22 29 2e 52 61 6e 67 65 28 22 48 39 22 29 20 3d 20 22 3d 22 20 26 20 55 73 65 72 46 6f 72 6d 32 2e 54 61 67 20 26 20 22 28 49 39 2c 49 31 30 26 4a 31 30 2c 49 31 31 2c 49 31 32 2c 2c 31 2c 39 29 } //1 Sheets("AutoDrom").Range("H9") = "=" & UserForm2.Tag & "(I9,I10&J10,I11,I12,,1,9)
		$a_01_4 = {53 68 65 65 74 73 28 22 41 75 74 6f 44 72 6f 6d 22 29 2e 52 61 6e 67 65 28 22 48 31 37 22 29 20 3d 20 22 3d 22 20 26 20 55 73 65 72 46 6f 72 6d 31 2e 54 61 67 20 26 20 22 28 49 31 37 29 } //1 Sheets("AutoDrom").Range("H17") = "=" & UserForm1.Tag & "(I17)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}