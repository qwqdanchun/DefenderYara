
rule Ransom_Win32_StopCrypt_SP_MTB{
	meta:
		description = "Ransom:Win32/StopCrypt.SP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 43 00 20 00 70 00 69 00 6e 00 67 00 20 00 31 00 2e 00 31 00 2e 00 31 00 2e 00 31 00 20 00 2d 00 6e 00 20 00 33 00 20 00 2d 00 77 00 20 00 33 00 30 00 30 00 30 00 20 00 3e 00 20 00 4e 00 75 00 6c 00 20 00 26 00 20 00 44 00 65 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 71 00 20 00 22 00 25 00 73 00 22 00 } //02 00  cmd.exe /C ping 1.1.1.1 -n 3 -w 3000 > Nul & Del /f /q "%s"
		$a_01_1 = {74 65 73 74 65 72 73 2e 65 78 65 } //02 00  testers.exe
		$a_01_2 = {41 6c 6c 69 65 20 64 65 74 65 63 74 65 64 } //02 00  Allie detected
		$a_01_3 = {41 55 33 21 } //00 00  AU3!
	condition:
		any of ($a_*)
 
}