
rule TrojanDownloader_Win32_Zlob_KG{
	meta:
		description = "TrojanDownloader:Win32/Zlob.KG,SIGNATURE_TYPE_PEHSTR,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {43 00 32 00 41 00 31 00 43 00 35 00 43 00 42 00 2d 00 43 00 30 00 45 00 46 00 2d 00 34 00 36 00 38 00 39 00 2d 00 39 00 34 00 33 00 36 00 2d 00 46 00 36 00 32 00 43 00 43 00 41 00 31 00 43 00 35 00 33 00 38 00 33 00 } //1 C2A1C5CB-C0EF-4689-9436-F62CCA1C5383
		$a_01_1 = {73 73 66 74 2e 64 6c 6c } //1 ssft.dll
		$a_01_2 = {64 00 6e 00 73 00 64 00 75 00 65 00 70 00 61 00 67 00 65 00 2e 00 63 00 6f 00 6d 00 } //1 dnsduepage.com
		$a_01_3 = {73 00 6e 00 2e 00 63 00 6f 00 6d 00 2f 00 72 00 65 00 73 00 } //1 sn.com/res
		$a_01_4 = {70 00 75 00 72 00 65 00 73 00 61 00 66 00 65 00 74 00 79 00 68 00 65 00 72 00 65 00 2e 00 63 00 6f 00 6d 00 2f 00 73 00 65 00 61 00 72 00 63 00 68 00 2e 00 70 00 68 00 70 00 3f 00 71 00 71 00 3d 00 25 00 73 00 } //1 puresafetyhere.com/search.php?qq=%s
		$a_01_5 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //1 VirtualProtect
		$a_01_6 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //1 DllRegisterServer
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}