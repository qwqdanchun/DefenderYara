
rule Trojan_Win32_Tracur_AL{
	meta:
		description = "Trojan:Win32/Tracur.AL,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {31 00 2e 00 35 00 20 00 54 00 4e 00 20 00 73 00 77 00 6f 00 64 00 6e 00 69 00 57 00 20 00 3b 00 30 00 2e 00 36 00 20 00 45 00 49 00 53 00 4d 00 20 00 3b 00 65 00 6c 00 62 00 69 00 74 00 61 00 70 00 6d 00 6f 00 63 00 28 00 20 00 30 00 2e 00 34 00 2f 00 61 00 6c 00 6c 00 69 00 7a 00 6f 00 4d 00 } //1 1.5 TN swodniW ;0.6 EISM ;elbitapmoc( 0.4/allizoM
		$a_02_1 = {3f 00 3f 00 65 00 3f 00 3f 00 3f 00 3f 00 4d 00 3f 00 3f 00 75 00 3f 00 3f 00 6c 00 3f 00 65 00 3f 00 3f 00 4d 00 3f 00 3f 00 3f 00 6f 00 3f 00 3f 00 3f 00 3f 00 72 00 3f 00 3f 00 70 00 3f 00 3f 00 68 00 3f 00 3f 00 58 00 3f 00 3f 00 3f 00 54 00 3f 00 3f 00 ?? ?? 3f 00 3f 00 63 00 3f 00 3f 00 6f 00 3f 00 3f 00 3f 00 3f 00 6e 00 3f 00 3f 00 69 00 3f 00 3f 00 6d 00 3f 00 65 00 3f 00 3f 00 2e 00 3f 00 65 00 3f 00 3f 00 78 00 3f 00 65 00 3f 00 3f 00 3f 00 3f 00 3f 00 } //1
		$a_00_2 = {41 00 72 00 65 00 73 00 55 00 52 00 4c 00 } //1 AresURL
		$a_00_3 = {53 00 68 00 61 00 72 00 65 00 41 00 7a 00 61 00 55 00 52 00 4c 00 } //1 ShareAzaURL
		$a_00_4 = {77 00 3f 00 3f 00 77 00 3f 00 3f 00 3f 00 77 00 3f 00 3f 00 2e 00 3f 00 3f 00 3f 00 76 00 3f 00 3f 00 3f 00 3f 00 61 00 3f 00 3f 00 3f 00 3f 00 6d 00 3f 00 3f 00 3f 00 3f 00 70 00 3f 00 3f 00 3f 00 69 00 3f 00 3f 00 3f 00 72 00 3f 00 3f 00 3f 00 65 00 3f 00 3f 00 3f 00 6d 00 3f 00 3f 00 3f 00 6f 00 3f 00 3f 00 3f 00 6c 00 3f 00 3f 00 3f 00 69 00 3f 00 3f 00 3f 00 2e 00 3f 00 3f 00 63 00 3f 00 3f 00 3f 00 6f 00 3f 00 3f 00 6d 00 } //1 w??w???w??.???v????a????m????p???i???r???e???m???o???l???i???.??c???o??m
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}