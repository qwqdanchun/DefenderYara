
rule Ransom_Win32_Mole_YAB_MTB{
	meta:
		description = "Ransom:Win32/Mole.YAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {2d 2d 42 45 47 49 4e 20 50 55 42 4c 49 43 20 4b 45 59 2d 2d } //01 00  --BEGIN PUBLIC KEY--
		$a_01_1 = {62 63 64 65 64 69 74 20 2f 73 65 74 20 7b 64 65 66 61 75 6c 74 7d 20 72 65 63 6f 76 65 72 79 65 6e 61 62 6c 65 64 20 4e 6f } //01 00  bcdedit /set {default} recoveryenabled No
		$a_01_2 = {76 73 73 61 64 6d 69 6e 2e 65 78 65 20 44 65 6c 65 74 65 20 53 68 61 64 6f 77 73 20 2f 41 6c 6c 20 2f 51 75 69 65 74 } //01 00  vssadmin.exe Delete Shadows /All /Quiet
		$a_01_3 = {5f 00 48 00 45 00 4c 00 50 00 5f 00 49 00 4e 00 53 00 54 00 52 00 55 00 43 00 54 00 49 00 4f 00 4e 00 2e 00 54 00 58 00 54 00 } //01 00  _HELP_INSTRUCTION.TXT
		$a_01_4 = {41 00 6c 00 6c 00 20 00 6f 00 66 00 20 00 79 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 61 00 72 00 65 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 } //01 00  All of your files are encrypted
		$a_01_5 = {59 00 6f 00 75 00 72 00 20 00 44 00 45 00 43 00 52 00 59 00 50 00 54 00 2d 00 49 00 44 00 } //01 00  Your DECRYPT-ID
		$a_01_6 = {2e 00 4d 00 4f 00 4c 00 45 00 30 00 32 00 } //00 00  .MOLE02
	condition:
		any of ($a_*)
 
}