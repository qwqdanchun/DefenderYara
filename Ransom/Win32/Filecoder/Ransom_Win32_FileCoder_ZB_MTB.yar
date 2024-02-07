
rule Ransom_Win32_FileCoder_ZB_MTB{
	meta:
		description = "Ransom:Win32/FileCoder.ZB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {45 00 4d 00 49 00 4d 00 49 00 43 00 5f 00 4c 00 4f 00 47 00 2e 00 74 00 78 00 74 00 } //01 00  EMIMIC_LOG.txt
		$a_01_1 = {41 6c 6c 20 6f 66 20 79 6f 75 72 20 66 69 6c 65 73 2c 20 64 6f 63 75 6d 65 6e 74 73 20 61 6e 64 20 64 61 74 61 62 61 73 65 73 20 61 72 65 20 65 6e 63 72 79 70 74 65 64 } //01 00  All of your files, documents and databases are encrypted
		$a_01_2 = {44 00 65 00 6c 00 65 00 74 00 65 00 20 00 53 00 68 00 61 00 64 00 6f 00 77 00 20 00 43 00 6f 00 70 00 69 00 65 00 73 00 } //01 00  Delete Shadow Copies
		$a_01_3 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 20 00 2d 00 45 00 78 00 65 00 63 00 75 00 74 00 69 00 6f 00 6e 00 50 00 6f 00 6c 00 69 00 63 00 79 00 20 00 42 00 79 00 70 00 61 00 73 00 73 00 20 00 22 00 47 00 65 00 74 00 2d 00 56 00 4d 00 20 00 7c 00 20 00 53 00 74 00 6f 00 70 00 2d 00 56 00 4d 00 22 00 } //01 00  powershell.exe -ExecutionPolicy Bypass "Get-VM | Stop-VM"
		$a_01_4 = {24 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 2e 00 7e 00 77 00 73 00 } //01 00  $windows.~ws
		$a_01_5 = {24 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 2e 00 7e 00 62 00 74 00 } //00 00  $windows.~bt
	condition:
		any of ($a_*)
 
}