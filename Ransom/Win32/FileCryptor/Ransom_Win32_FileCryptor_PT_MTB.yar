
rule Ransom_Win32_FileCryptor_PT_MTB{
	meta:
		description = "Ransom:Win32/FileCryptor.PT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 00 63 00 20 00 74 00 69 00 6d 00 65 00 6f 00 75 00 74 00 20 00 31 00 20 00 26 00 26 00 20 00 64 00 65 00 6c 00 20 00 22 00 25 00 73 00 22 00 } //01 00  /c timeout 1 && del "%s"
		$a_01_1 = {69 00 6e 00 66 00 6f 00 2e 00 74 00 78 00 74 00 } //01 00  info.txt
		$a_01_2 = {41 00 6c 00 6c 00 20 00 79 00 6f 00 75 00 72 00 20 00 64 00 61 00 74 00 61 00 20 00 62 00 65 00 65 00 6e 00 20 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 21 00 } //01 00  All your data been crypted!
		$a_01_3 = {44 00 61 00 6d 00 69 00 61 00 6e 00 4f 00 6c 00 73 00 6f 00 6e 00 73 00 6e 00 6f 00 77 00 64 00 72 00 6f 00 70 00 40 00 63 00 6f 00 63 00 6b 00 2e 00 6c 00 69 00 } //01 00  DamianOlsonsnowdrop@cock.li
		$a_02_4 = {2e 00 73 00 63 00 72 00 90 02 04 2e 00 63 00 6d 00 64 00 90 02 04 2e 00 64 00 6c 00 6c 00 90 02 04 2e 00 62 00 61 00 74 00 90 02 04 2e 00 63 00 70 00 6c 00 90 02 04 2e 00 73 00 79 00 73 00 90 02 04 2e 00 6d 00 73 00 63 00 90 02 04 2e 00 63 00 6f 00 6d 00 90 00 } //00 00 
		$a_00_5 = {5d 04 00 } //00 04 
	condition:
		any of ($a_*)
 
}