
rule TrojanDownloader_Win32_VB_UI{
	meta:
		description = "TrojanDownloader:Win32/VB.UI,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {74 61 6e 63 68 75 38 36 37 35 } //1 tanchu8675
		$a_01_1 = {2f 00 63 00 70 00 6d 00 2f 00 31 00 30 00 31 00 30 00 32 00 2f 00 31 00 30 00 31 00 39 00 34 00 2e 00 6a 00 73 00 70 00 3f 00 73 00 3d 00 31 00 31 00 30 00 35 00 34 00 26 00 64 00 6d 00 3d 00 32 00 } //1 /cpm/10102/10194.jsp?s=11054&dm=2
		$a_01_2 = {31 00 31 00 37 00 2e 00 34 00 30 00 2e 00 31 00 39 00 36 00 2e 00 32 00 30 00 32 00 2f 00 74 00 6a 00 32 00 2f 00 63 00 6f 00 75 00 6e 00 74 00 2e 00 61 00 73 00 70 00 3f 00 76 00 65 00 72 00 3d 00 32 00 2e 00 30 00 26 00 6d 00 61 00 63 00 3d 00 } //1 117.40.196.202/tj2/count.asp?ver=2.0&mac=
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}