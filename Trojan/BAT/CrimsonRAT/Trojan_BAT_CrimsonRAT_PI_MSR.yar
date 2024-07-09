
rule Trojan_BAT_CrimsonRAT_PI_MSR{
	meta:
		description = "Trojan:BAT/CrimsonRAT.PI!MSR,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {64 68 72 77 61 72 68 73 61 76 2e 65 78 65 } //1 dhrwarhsav.exe
		$a_01_1 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 7c 00 64 00 68 00 72 00 77 00 61 00 72 00 68 00 73 00 61 00 76 00 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run|dhrwarhsav
		$a_01_2 = {24 39 66 32 65 62 37 62 62 2d 65 32 30 39 2d 34 34 65 64 2d 38 36 36 33 2d 37 38 66 61 64 63 37 38 65 36 38 32 } //1 $9f2eb7bb-e209-44ed-8663-78fadc78e682
		$a_03_3 = {5c 64 68 72 77 61 72 68 73 61 76 5c 64 68 72 77 61 72 68 73 61 76 5c 6f 62 6a 5c [0-10] 5c 64 68 72 77 61 72 68 73 61 76 2e 70 64 62 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=3
 
}