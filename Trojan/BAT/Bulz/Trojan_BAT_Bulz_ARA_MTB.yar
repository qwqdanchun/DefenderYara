
rule Trojan_BAT_Bulz_ARA_MTB{
	meta:
		description = "Trojan:BAT/Bulz.ARA!MTB,SIGNATURE_TYPE_PEHSTR,08 00 08 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {50 00 6f 00 69 00 6e 00 74 00 5f 00 54 00 65 00 6d 00 70 00 5f 00 53 00 70 00 6f 00 6f 00 66 00 65 00 72 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //02 00  Point_Temp_Spoofer.Properties.Resources
		$a_01_1 = {6c 00 6f 00 67 00 73 00 2e 00 74 00 78 00 74 00 } //02 00  logs.txt
		$a_01_2 = {2f 00 63 00 64 00 6e 00 2e 00 64 00 69 00 73 00 63 00 6f 00 72 00 64 00 61 00 70 00 70 00 2e 00 63 00 6f 00 6d 00 2f 00 61 00 74 00 74 00 61 00 63 00 68 00 6d 00 65 00 6e 00 74 00 73 00 2f 00 } //02 00  /cdn.discordapp.com/attachments/
		$a_01_3 = {2f 00 43 00 6c 00 65 00 61 00 6e 00 65 00 72 00 5f 00 31 00 2e 00 62 00 61 00 74 00 3f 00 65 00 78 00 3d 00 } //00 00  /Cleaner_1.bat?ex=
	condition:
		any of ($a_*)
 
}