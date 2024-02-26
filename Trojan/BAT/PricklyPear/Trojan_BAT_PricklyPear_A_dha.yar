
rule Trojan_BAT_PricklyPear_A_dha{
	meta:
		description = "Trojan:BAT/PricklyPear.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 03 00 00 0a 00 "
		
	strings :
		$a_01_0 = {5c 00 4f 00 6e 00 65 00 44 00 72 00 69 00 76 00 65 00 55 00 70 00 64 00 61 00 74 00 65 00 43 00 6f 00 72 00 65 00 2e 00 65 00 78 00 65 00 } //0a 00  \OneDriveUpdateCore.exe
		$a_01_1 = {5c 00 77 00 61 00 72 00 41 00 6e 00 64 00 44 00 6f 00 6c 00 70 00 68 00 69 00 6e 00 73 00 2e 00 64 00 6f 00 63 00 78 00 } //0a 00  \warAndDolphins.docx
		$a_01_2 = {73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 72 00 65 00 61 00 74 00 65 00 20 00 2f 00 54 00 4e 00 20 00 4f 00 6e 00 65 00 44 00 72 00 69 00 76 00 65 00 53 00 74 00 61 00 6e 00 64 00 61 00 6c 00 30 00 6e 00 65 00 20 00 2f 00 53 00 43 00 20 00 6d 00 69 00 6e 00 75 00 74 00 65 00 20 00 2f 00 6d 00 6f 00 20 00 36 00 20 00 2f 00 74 00 72 00 } //00 00  schtasks.exe /create /TN OneDriveStandal0ne /SC minute /mo 6 /tr
	condition:
		any of ($a_*)
 
}