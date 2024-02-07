
rule Ransom_Win32_AssistCrypt_MK_MTB{
	meta:
		description = "Ransom:Win32/AssistCrypt.MK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,37 00 37 00 06 00 00 0a 00 "
		
	strings :
		$a_81_0 = {40 2e 61 73 73 69 73 74 } //0a 00  @.assist
		$a_81_1 = {61 73 73 69 73 74 2e 69 6e 69 } //05 00  assist.ini
		$a_81_2 = {63 6d 64 2e 65 78 65 20 2f 43 20 70 69 6e 67 20 31 2e 31 2e 31 2e 31 20 2d 6e 20 31 20 2d 77 } //0a 00  cmd.exe /C ping 1.1.1.1 -n 1 -w
		$a_81_3 = {45 78 74 3d 6c 6f 67 7c 6c 6f 67 31 7c 6c 6f 67 32 7c 74 6d 70 7c 73 79 73 7c 62 6f 6f 74 6d 67 72 7c 64 6c 6c 7c 74 68 65 6d 65 7c 62 61 74 7c 63 6d 64 7c 67 64 63 62 } //0a 00  Ext=log|log1|log2|tmp|sys|bootmgr|dll|theme|bat|cmd|gdcb
		$a_81_4 = {50 72 63 3d 77 33 77 70 7c 73 71 6c 7c 65 78 63 68 61 6e 7c 6e 6f 64 65 7c 73 63 61 6e 7c 6f 75 74 6c 6f 6f 6b 7c 74 68 65 62 61 74 7c 63 68 72 6f 6d 65 7c 66 69 72 65 66 6f 78 } //0a 00  Prc=w3wp|sql|exchan|node|scan|outlook|thebat|chrome|firefox
		$a_81_5 = {46 4e 61 6d 65 3d 41 53 53 49 53 54 2d 52 45 41 44 4d 45 2e 74 78 74 } //00 00  FName=ASSIST-README.txt
		$a_00_6 = {5d 04 00 00 c9 75 04 80 5c 3a 00 00 ca 75 04 80 00 00 01 00 04 00 24 00 54 72 6f 6a 61 6e 44 6f 77 6e 6c 6f 61 64 65 72 3a 4f 39 37 4d 2f 51 61 6b 62 } //6f 74 
	condition:
		any of ($a_*)
 
}