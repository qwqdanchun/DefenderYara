
rule Trojan_Win32_Guloader_SRS_MTB{
	meta:
		description = "Trojan:Win32/Guloader.SRS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {4d 61 74 72 69 6b 65 6c 64 69 72 65 6b 74 6f 72 61 74 65 72 73 2e 69 6e 69 } //01 00  Matrikeldirektoraters.ini
		$a_01_1 = {4d 72 6b 6c 61 67 64 65 73 2e 55 6e 61 } //01 00  Mrklagdes.Una
		$a_01_2 = {42 61 72 68 6f 76 65 64 65 74 31 35 30 } //01 00  Barhovedet150
		$a_01_3 = {53 6b 62 6e 65 74 69 6d 65 6e 73 } //01 00  Skbnetimens
		$a_01_4 = {53 74 6a 66 6f 72 68 6f 6c 64 73 } //01 00  Stjforholds
		$a_01_5 = {53 74 65 72 73 65 72 6e 65 73 2e 66 72 61 } //01 00  Stersernes.fra
		$a_01_6 = {5c 55 6e 63 6f 6c 6f 75 72 61 62 6c 65 73 5c 44 72 75 65 6c 69 67 68 65 64 2e 53 61 6d } //00 00  \Uncolourables\Druelighed.Sam
	condition:
		any of ($a_*)
 
}