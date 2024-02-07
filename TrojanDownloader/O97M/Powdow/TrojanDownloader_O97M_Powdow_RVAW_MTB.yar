
rule TrojanDownloader_O97M_Powdow_RVAW_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.RVAW!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {6b 69 6c 6c 28 22 63 3a 5c 75 73 65 72 73 5c 22 26 65 6e 76 69 72 6f 6e 28 22 75 73 65 72 6e 61 6d 65 22 29 26 22 5c 64 6f 63 75 6d 65 6e 74 73 5c 22 26 22 74 75 65 2e 7a 69 70 22 29 } //01 00  kill("c:\users\"&environ("username")&"\documents\"&"tue.zip")
		$a_01_1 = {63 72 65 61 74 65 6f 62 6a 65 63 74 28 22 77 73 63 72 69 70 74 2e 73 68 65 6c 6c 22 29 2e 73 70 65 63 69 61 6c 66 6f 6c 64 65 72 73 28 22 6d 79 64 6f 63 75 6d 65 6e 74 73 22 29 26 22 5c 74 75 65 2e 7a 69 70 22 72 65 74 3d 75 72 6c 64 6f 77 6e 6c 6f 61 64 74 6f 66 69 6c 65 28 30 2c 73 74 72 75 72 6c 2c 73 74 72 70 61 74 68 2c 30 2c 30 } //01 00  createobject("wscript.shell").specialfolders("mydocuments")&"\tue.zip"ret=urldownloadtofile(0,strurl,strpath,0,0
		$a_01_2 = {22 68 22 73 61 65 28 31 29 3d 22 74 22 73 61 65 28 32 29 3d 22 70 22 73 61 65 28 33 29 3d 22 73 22 73 61 65 28 34 29 3d 22 3a 22 73 61 65 28 35 29 3d 22 2f 22 } //01 00  "h"sae(1)="t"sae(2)="p"sae(3)="s"sae(4)=":"sae(5)="/"
		$a_01_3 = {61 75 74 6f 5f 6f 70 65 6e 28 29 } //00 00  auto_open()
	condition:
		any of ($a_*)
 
}